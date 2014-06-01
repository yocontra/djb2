module.exports = function(chars) {
  if (typeof chars === 'string') {
    chars = chars.split('').map(function(str){
      return str.charCodeAt(0);
    });
  }

  if (!Array.isArray(chars)) {
    throw new Error('input must be a string or an array');
  }

  return chars.reduce(function(prev, curr){
    return ((prev << 5) + prev) + curr;
  }, 5381);
};