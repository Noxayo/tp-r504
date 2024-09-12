import pytest
import fonctions as f
def test_1 ( ) :
	assert f.puissance(2 ,3) == 8
	assert f.puissance(2 ,2) == 4

def test_2 ( ) :
	assert f.puissance(-2 ,3) == -8
	assert f.puissance(10 ,-2) == 0.01

def test_passes_without_info():
	with pytest.raises(Exception) as e_info:
		x = f.puissance(0, -5)
