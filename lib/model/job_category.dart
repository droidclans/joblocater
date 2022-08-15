class JobsCategory {
   String? image;
   String? category;
   String? type;
   String? salary;
   JobsCategory({ this.image, this.category, this.type, this.salary});

   static List<JobsCategory> jobs = [
      JobsCategory(
          salary:' 100\$',
          type:     'Full Time',
          image:  'assets/images/developer.png',
          category:  'Software Developer',

      ),
      JobsCategory(
         salary:' 50\$',
         type:  'Full Time',
         image:  'assets/images/taech.jpeg',
         category:  'Teacher',

      ),
      JobsCategory(
         salary: '60\$',
         type:  'Part Time',
         image:   'assets/images/sl2.png',
         category:  'Salesforce Developer',

      ),
      JobsCategory(
         salary: '90\$',
         type:  'Full Time',
         image:   'assets/images/accountant.png',
         category:   'Accountant',

      ),
      JobsCategory(
         salary: '100\$',
         type:  'Full Time',
         image:   'assets/images/web.jpeg',
         category:   'Web Developer',

      ),
   ];

}