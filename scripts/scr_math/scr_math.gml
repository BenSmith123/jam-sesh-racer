
/// Smoothstep interpolation function
// Takes in start (lowest), end (highest) and value (percentage) to output value the curves and slows more gradual
function smoothstep(_start, _end, _value)
{
	return lerp(_start, _end, _value * _value * (3 - 2 * _value));
}