class Solution {
    public int waysToSplitArray(int[] nums) {
        long totalSum=0;
        for(int i=0;i<nums.length;i++){
            totalSum+=nums[i];
        }
        long leftSum=0;
        int ans=0;
        for(int i=0;i<nums.length-1;i++){
            leftSum+=nums[i];
            if(leftSum>=totalSum-leftSum){
                ans++;
            }
        }
        return ans;
    }
}
