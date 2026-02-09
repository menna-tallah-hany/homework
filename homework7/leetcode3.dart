class Solution {
  int maxProfit(List<int> prices) {
   int minPrice=prices[0];
   int profit = 0;
   for(int i=0;i< prices.length;i++){
    if(prices[i]<minPrice){
        minPrice = prices[i];
    }
    int currentProfit =prices[i]- minPrice ;
    if(profit<currentProfit){
   profit=currentProfit; 
   }
   }
   return profit;
  }
}