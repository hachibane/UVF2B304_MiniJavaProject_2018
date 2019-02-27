open AST

type objectDescriptor =
{
	name : string;
	attributes : astattribute list
}

type classDescriptor =
{
	name : string;
	methodDescriptor : astmethod list
}

let addMethod classDesc method = match classDesc with
  | { name=str; methodDescriptor = l} -> method :: l
  