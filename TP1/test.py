import pytest
import fonctions as f
def test_1():
	assert f.puissance(2 ,3) == 8
	assert f.puissance(2 ,2) == 4

def test_2():
	assert f.puissance(-2 ,3) == -8
	assert f.puissance(-2, -2) == 0.25
	assert f.puissance(10 ,-2) == 0.01
	assert f.puissance(0 ,2) == 0
	
def test_3():
	assert int(f.puissance(9, 0.5)) == 3
	assert f.puissance(9, -0.5) == 1/3
	with pytest.raises(Exception) as e_info:
		x = f.puissance(-9, 0.5)
	with pytest.raises(Exception) as e_info:
		x = f.puissance(-9, -0.5)
	
def test_4():
	with pytest.raises(Exception) as e_info:
		x = f.puissance(0, -1)
