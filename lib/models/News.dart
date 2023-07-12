class NewsList {
  static List<News> newsList = [
    News(
        newsTitle: "Putting Science & Profit Into Agriculture",
        imgSrc: "images/Soil-Analysis-Image.jpg",
        newsBody: """SOIL ANALYSIS

 This is an essential part of profitable farm management for all field crops. Based on the soil fertility problems identified in the soil test, we recommend a soil health correction program and a crop specific fertilizer program, meaning farmers are always investing wisely by applying the right inputs, at the right quantity, to increase yields and profitability."""
            """2. NITROGEN FERTILIZER RECOMMENDATIONS"""
            "Our lab analysis determines the amount of available nitrogen in your soils and we give you calculated nitrogen fertilizer recommendation based on the results."
            """3. SOIL HEALTHCARE PROGRAM"""
            "Our Soil Health Care Program is a complete service package for growers who want to sustain farms profits, through building and maintaining high levels of soil fertility in each of their fields."
            "The service includes:"
            """
    On farm per field sampling by our technician before each crop
    Full Soil Health Audit and Soil Fertility Analysis in our Laboratory
    Detailed lab report including full Soil Fertility Correction and Fertilizer Recommendations
    Farm visit every 6 months by our Soil Health Advisors to monitor the program and advise on additional soil health practices such as crop rotations and green manure crops
"""),
    News(
        newsTitle: "Adoption of BT Technology Key to Food security",
        imgSrc: "images/tech.jpg",
        newsBody:
            """Kenya has the potential to produce 80 million bags of maize annually if only we could adopt new technologies.

Currently the Country is able to produce only17 million bags against the potential of 80 million bags.

According the Principal Secretary State Department of Agriculture and Food Crops, Prof. Hamadi Boga, production of 80 million bags would see the country able to feed itself.

“The scientific technology on BT maize is complete and it is time for the country to embrace it, the PS said adding that the BT (Bacilus Thuringiensis) technology on maize has been proven and the concept is there.

Scientists in the Country have the last 10 years conducted trials on various varieties of BT maize that is drought and pests resistant and the results have been overwhelmingly positive.

What remains is getting approvals for National Performance Trials (NPT) and finally the release of BT maize and also commercialization."""),
    News(
      newsTitle:
          "A ticking time bomb is slowly brewing at Kenya’s ailing coffee industry over new regulations ",
      imgSrc: "images/coffee.jpg",
      newsBody:
          """Kenya’s ailing coffee industry is threatening to come all crashing down as government and farmers read from different scripts over the new coffee regulations. 

The newly published Crops (Coffee) (General) Regulations, 2019 that had been billed as the magic bullet to cure the ailing industry has now turned into a pain in the neck.""",
    ),
    News(
      newsTitle:
          'Kenya’s top young agriculturist on the future of professional farming',
      newsBody:
          "When Rodgers Kirwa graduated from an agribusiness degree at Kenya’s Egerton University in Kenya back in 2012, he struggled to find a job and didn’t have the capital to start a venture of his own."
          """ "But the now 27-year-old did have a somewhat-untraditional farm tool: a cell phone. With it, Kirwa began an agribusiness ‘talk show’ on Twitter, and it proved a hit, especially with young Kenyans. Since then, he’s tweeted about agricultural issues on a daily basis and accumulated more than 57,000 followers – and the moniker of “Mr. Agriculture” to boot."""
          "Kirwa’s Twitter fame helped him get his hands into the soil, too. After winning various awards and invitations to international conferences and training opportunities, he was able to secure financial support from several companies to start setting up a venture of his own.",
      imgSrc: 'images/IMG.jpg',
    ),
    News(
      newsTitle: 'Sustainable Agriculture',
      newsBody:
          "For decades, the public policies and big corporations that shape our food and agricultural system have pressed farmers to manage their land like food factories—places where inputs in the form of seed, fertilizer, pesticides, or animal feed are converted to outputs in the form of marketable food products."
          "This model of agriculture is marked by practices such as monoculture (planting the same one or two crops over a large area year after year), raising crops and livestock in isolation from each other, and leaving farmland bare and vulnerable to erosion and nutrient loss between commercial crops."
          "The industrial model ignores a crucial fact: farms are ecosystems—complex, interdependent networks of living things. Farmers succeed by managing their ecosystems to produce food efficiently.",
      imgSrc: 'images/sustainable.jpg',
    ),
    News(
        newsTitle: 'Strawberry Farming',
        imgSrc: 'images/strawberry2.jpg',
        newsBody:
            "Strawberry (Fragaria spp) is grown for its fruits which are widely appreciated for their bright red colour, aroma, sweetness and juicy texture. These fruits can be consumed fresh or in foods as pies, preserves, among others."
            'Although farmers have been quite reluctant in participating in strawberry farming stating that the industry is not very developed, those looking into venturing into the practice are highly encouraged because it has huge income potential.'
            'Fruits are sold locally or exported. Their demand is readily available in major urban markets, supermarkets and in marketing companies like Brookside, Trufood, KCC, among others.'
            'Strawberries are very easy to maintain.'
            'Varieties'
            'Strawberry varieties grown in Kenya include:-'
            'Chandler'
            'Tribute'
            'Tristar'
            'Tioga Selva'
            'Domail'
            'Rabunda'
            'Pajaro'
            'Douglas'
            'Ecological Requirements'
            'Strawberry farming in Kenya is done outdoors. However, for better performance, greenhouses are recommended because protect the plants from drought and excess rain.'
            "Strawberry farming does best in areas whose soil PH is 5.5 6-6.5. The soil should be well drained and weed-free. The crop thrives in hot climate and does not tolerate frost or extremely low temperatures."),
    News(
      newsTitle:
          "UNIDO to implement EU-funded project to boost Kenya’s agricultural exports",
      newsBody:
          """The United Nations Industrial Development Organization (UNIDO) will implement the ‘Market Access Upgrade Programme (MARKUP)’ project, which is funded by the European Union (EU) and anchored within the Ministry of Industry, Trade and Cooperatives."""
          """MARKUP aims at improving the competitiveness of small-scale farmers in 12 counties of Kenya through the enhancement of quality and safety standards in a variety of crop value chains, including mango, passion fruit, avocado, tea, coffee, horticulture, herbs and spices, tea and nuts. MARKUP will strengthen the extension services; promote the concept of good agricultural practices and compliance requirements for better market access; and build the capacity of the inspection, testing and certification systems to address the gaps along the entire supply chain of the identified products."""
          "This will lead to increases in the quality and volume of the produce; at the same time, this will enhance the competitiveness of Kenyan agriproducts to access markets; generate more foreign exchange; and improve the socio-economic conditions of the farmers."
          "Currently, Kenya’s horticulture is mainly exported to the European Union (45 per cent of the country’s exports); the project will be implemented in partnership with the International Trade Centre (ITC) and the German Technical Cooperation (GIZ) and, at regional level, with the East African Community (EAC). Nationally, UNIDO will work with different stakeholders including the Kenya Plant Health Inspectorate Services (KEPHIS), the Horticultural Crops Directorate (HCD), the Kenyan Bureau of Standards (KEBS) and the Ministry of Agriculture, Livestock and fisheries. The EUR3.7 million MARKUP project is to be implemented over a period of 4 years, and similar activities with similar budgets are underway in other EAC countries.",
      imgSrc: "images/unido-kenya.jpg",
    ),
  ];
}

class News {
  String newsTitle;
  String newsBody;
  String imgSrc;

  News({
    required this.newsTitle,
    required this.newsBody,
    required this.imgSrc,
  });
}
