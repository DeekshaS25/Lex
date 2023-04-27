%s A B C D E F G H
%%
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN INITIAL;
<A>a BEGIN B;
<A>b BEGIN F;
<B>a BEGIN C;
<B>b BEGIN D;
<C>a BEGIN C;
<C>b BEGIN D;
<D>a BEGIN E;
<D>b BEGIN G;
<E>a BEGIN B;
<E>b BEGIN F;
<F>a BEGIN E;
<F>b BEGIN G;
<G>a BEGIN A;
<G>b BEGIN INITIAL;
<INITIAL>\n BEGIN INITIAL; printf("not accepted\n");
<A>\n BEGIN INITIAL; printf("not accepted\n");
<B>\n BEGIN INITIAL; printf("not accepted\n");
<C>\n BEGIN INITIAL; printf("accepted\n");
<D>\n BEGIN INITIAL; printf("accepted\n");
<E>\n BEGIN INITIAL; printf("accepted\n");
<F>\n BEGIN INITIAL; printf("non accepted\n");
<G>\n BEGIN INITIAL; printf("accepted\n");
<INITIAL>[^ab\n] BEGIN H;
<A>[^ab\n] BEGIN H;
<B>[^ab\n] BEGIN H;
<C>[^ab\n] BEGIN H;
<D>[^ab\n] BEGIN H;
<E>[^ab\n] BEGIN H;
<F>[^ab\n] BEGIN H;
<G>[^ab\n] BEGIN H;
<H>[^\n] BEGIN H;
<H>[\n] BEGIN INITIAL; printf("Invalid Input\n");
%%
int main()
{
printf("Enter the String of a and b only:\n");
yylex();
}
