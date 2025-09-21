.class final Lf7/a;
.super Lf7/b;
.source "Builders.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lf7/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final e:Lu6/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/p<",
            "Le7/s<",
            "-TT;>;",
            "Ln6/d<",
            "-",
            "Lk6/q;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu6/p;Ln6/g;ILe7/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/p<",
            "-",
            "Le7/s<",
            "-TT;>;-",
            "Ln6/d<",
            "-",
            "Lk6/q;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ln6/g;",
            "I",
            "Le7/e;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lf7/b;-><init>(Lu6/p;Ln6/g;ILe7/e;)V

    .line 5
    iput-object p1, p0, Lf7/a;->e:Lu6/p;

    return-void
.end method

.method public synthetic constructor <init>(Lu6/p;Ln6/g;ILe7/e;ILkotlin/jvm/internal/g;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 1
    sget-object p2, Ln6/h;->a:Ln6/h;

    :cond_0
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_1

    const/4 p3, -0x2

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    .line 2
    sget-object p4, Le7/e;->a:Le7/e;

    .line 3
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lf7/a;-><init>(Lu6/p;Ln6/g;ILe7/e;)V

    return-void
.end method


# virtual methods
.method protected c(Le7/s;Ln6/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le7/s<",
            "-TT;>;",
            "Ln6/d<",
            "-",
            "Lk6/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lf7/a$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lf7/a$a;

    iget v1, v0, Lf7/a$a;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lf7/a$a;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lf7/a$a;

    invoke-direct {v0, p0, p2}, Lf7/a$a;-><init>(Lf7/a;Ln6/d;)V

    :goto_0
    iget-object p2, v0, Lf7/a$a;->b:Ljava/lang/Object;

    invoke-static {}, Lo6/b;->c()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lf7/a$a;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lf7/a$a;->a:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Le7/s;

    invoke-static {p2}, Lk6/l;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lk6/l;->b(Ljava/lang/Object;)V

    .line 4
    iput-object p1, v0, Lf7/a$a;->a:Ljava/lang/Object;

    iput v3, v0, Lf7/a$a;->d:I

    invoke-super {p0, p1, v0}, Lf7/b;->c(Le7/s;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    invoke-interface {p1}, Le7/y;->n()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 6
    sget-object p0, Lk6/q;->a:Lk6/q;

    return-object p0

    .line 7
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\'awaitClose { yourCallbackOrListener.cancel() }\' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
