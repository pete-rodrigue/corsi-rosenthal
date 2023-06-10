# corsi-rosenthal

Quebec experienced record-breaking heat and drought during the spring of 2023, leading to the provinces' worst wildfire season in recorded history.[^1] Where I live in Washington DC, the smoke was so thick on June 8th that visibility was reduced to less than a mile, the EPA categorized the air as "very unhealthy", and the National Zoo closed to protect the animals.[^2] [^3]

![ezgif-4-e06c05e2c4](https://github.com/pete-rodrigue/corsi-rosenthal/assets/8962291/5f2965db-c139-4b33-a03e-b7b8d0a441e5)<br/>
*NOAA*

![dc-smoke-monument-ap-ps-230608_1686227632825_hpEmbed_3x2_992](https://github.com/pete-rodrigue/corsi-rosenthal/assets/8962291/665f6662-2d9a-4fcc-95cd-4d53cb52d331)
*This is not a graphic image; it's a real photo of the sun behind the Washington Monument taken by AP staffer Julio Cortez.*


Like many DC residents, I live in a small apartment with a window AC unit, which allows air to enter from outside. I dug out an old Raspberry Pi Pico project to test my indoor air quality. I'd originally messed with an air monitoring kit to test the air on my walk to work.[^4] Here's what some of the data looked like:

![commute map](https://github.com/pete-rodrigue/corsi-rosenthal/assets/8962291/a560d1e3-feb4-49a6-b40c-9c981a39991c)
*The colors are standardized based on the worst/highest PM2.5 values captured in the sample. So the red color is a reading of about 20, which is "moderate" but not "unhealthy for sensitive groups", according to the EPA. Green is basically a value of zero.*

Anyway the air quality in my apartment on Thursday June 8th was "very unhealthy", with a PM2.5 value above 200 μg/m^3. I did what many freaked-out denizens of the anthropocene did that day, and googled "cheap indoor air filter." This led to a page about "Corsi-Rosenthal boxes": https://en.wikipedia.org/wiki/Corsi%E2%80%93Rosenthal_Box

![https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/How_to_make_a_Corsi-Rosenthal_Box.jpg/593px-How_to_make_a_Corsi-Rosenthal_Box.jpg](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2a/How_to_make_a_Corsi-Rosenthal_Box.jpg/593px-How_to_make_a_Corsi-Rosenthal_Box.jpg)



[^1]: https://www.thestar.com/news/canada/2021/06/08/ive-never-seen-this-a-drought-like-this.html
[^2]: https://www.timeanddate.com/weather/usa/washington-dc/historic
[^3]: https://www.dcnewsnow.com/news/local-news/virginia/smithsonians-national-zoo-closed-due-to-poor-air-quality-in-dc/
[^4]: Here's the Pico component I used (I have no affilliation with this company; other air monitoring sensors available online probably work similarly): https://shop.sb-components.co.uk/products/pico-air-monitoring-expansion
