var assert=require('assert');
describe('Array',function(){
	describe('indexOf',function(){
		it('should return -1 when the value is not present',function(){
			assert.equal([1,2,3].indexOf(4), -1);
		});
	});

	describe('join',function(){
		it('should return csv string with the elements present in the array',function(){
			assert.equal([1,2,3].join(','),'1,2,3');
		});
	});
});