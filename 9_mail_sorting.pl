
@products = (
   {
      name => 'Jhon',
      date => 20221111,
      discount => 'Happy Byrthday',     
   },
   {
      name => 'Philip',
      date => 20221112,
      discount => 'Happy Cristmas',     
   },
   {
      name => 'Hanna',
      date => 20221113,
      discount => 'New Order',     
   }
);

@products = sort { $a->{name} lt $b->{name} } @products;

foreach $p (@products)
{
   printf "NAME: %-8s DATE: %2d  TOPIC: %-15s\n" => @{$p}{qw(name date discount)};
}