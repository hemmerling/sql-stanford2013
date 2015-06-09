With Recursive Mystery(X,Y) As
       (Select A As X, A As Y From T
        Union
        Select m1.X, m2.Y
        From Mystery m1, Mystery m2
        Where m2.X = m1.Y + 1)
    Select Max(Y-X) + 1 From Mystery;    


