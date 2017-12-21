# PricesheetForeignCurrency
Handling price-sheet in a 3rd currency in Sales Orders

PricesheetForeignCurrency Settings

We have added a new section on the Order Types Screen(Distribution->Sales Orders->Configuration->Order Types) this section is named the Price Sheet Currency Settings.

On the Order type screen, select the SO Order Type(for sales order) and select the desired Currency ID, Select also the Curr. Rate Type.

You could also indicate if you want to let the users override Currency and/or override Rate. See sample below:


Email Activity (6f53271a-01f6-4946-af3f-00000cbfda38)\PriceSheetCurrencySettings.PNG


Sales Price Worksheet

You can set your sales price sheet. On this example(as I did on the Price Sheet Currency Settings) I have added one Item with pricesheet price in GBP.

Email Activity (6f53271a-01f6-4946-af3f-00000cbfda38)\SalesPriceSheet.PNG


Sales Order

On the sales order screen, we have added a Pricesheet Currency field to the Document Header(see below).

Also we have added a Pricesheet Unit Price field to the SOLine(details).



Please notice that our test Acumatica instance has USD as Base Currency, in your case the Base Currency would be ZAR.



On this sample, I have selected a Customer with a EUR(Euro) Currency, this is the "Document Currency".

You can see that the Pricesheet Currency field defaulted to the GBP value set on the Order Type settings screen(explain above).



I have added the Item I have on my Sales Price Sheet, and you can see it populates the Pricesheet Unit Price(from worksheet GBP) and shows the UnitPrice field in the Document Currency EUR.





Email Activity (6f53271a-01f6-4946-af3f-00000cbfda38)\SOOrderCurrency.PNG





Updating Price Sheet Currency at Document's Level:



In order to change the price sheet currency at document's level just click on the price sheet currency dropdown and modify it as need. (This works just like the normal currency)

As a result you will  see that it will  update both SOLines(Unit Price) and the Document's Order Total on the header. See below.





Email Activity (6f53271a-01f6-4946-af3f-00000cbfda38)\UpdateCurrencyAtDocumentLevel.PNG





Updating Price Sheet Currency at Detail Line's Level:



In order to change the price sheet currency at line's level just click on the price sheet unit price field and modify it as need.

As a result you will  see that it will  update that Line (Unit Price) and the Document's Order Total on the header. See below.





Email Activity (6f53271a-01f6-4946-af3f-00000cbfda38)\ChangingPricesheetValueAtLineLevelupdatesDocument..PNG



Adding Items that are not on the Sales Price Sheet:



When adding items that are not on the sales price sheet it will work as usual, it will  grab the value(if any) from the Base and then convert it to the correct Currency for both PriceSheet Unit Price and Unit Price. (see below)



Email Activity (6f53271a-01f6-4946-af3f-00000cbfda38)\AddingItemsNotFoundOnThePriceSheet.PNG



Modifying the Unit Price field:



The Customization Project disabled the Unit Price field if the PriceSheet Unit Price Custom field has a value on it.

If you need to modify the Line Unit Price field just make sure the New Custom field has no value, then you could modify the Unit Price field. (see below)



Email Activity (6f53271a-01f6-4946-af3f-00000cbfda38)\ModifyingUnitPrice.PNG



Clicking on View Base.



You could also use the View Base button to show the Document on the Base Currency at any time.



Email Activity (6f53271a-01f6-4946-af3f-00000cbfda38)\ClickingOnViewBase.PNG



Viewing Base:



Email Activity (6f53271a-01f6-4946-af3f-00000cbfda38)\ViewingBase.PNG
