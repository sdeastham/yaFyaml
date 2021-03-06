program main
   use yafyaml

   type(Parser) :: p
   type(Configuration) :: config
   integer :: prime

   
   p = Parser('core')
   config = p%load(FileStream('trivial.yaml'))

   prime = config%at('prime')

   if (prime == 17) then
      print*,'success'
   else
      print*,'failure;  expected 17 but found ', prime
   end if
end program main
