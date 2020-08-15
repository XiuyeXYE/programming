struct Node {
    x: i32,
    y: i64,
}

impl std::fmt::Display for Node {
    fn fmt(
        &self,
        formatter: &mut std::fmt::Formatter<'_>,
    ) -> std::result::Result<(), std::fmt::Error> {
        write!(formatter,"{},{}", self.x, self.y)
    }
}

fn f(x:i32)->i32{
    x
}

fn g(a:Node)->Node{
    a
}

fn main() {
    println!("Hello, world!");
    let a = Node { x: 100, y: 200 };
    println!("{}", a);
    println!("{}",f(a.x));
    // println!("{}",g(a));
    // let b = g(a);
    println!("{}",&a);
    
}
