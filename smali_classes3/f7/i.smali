.class final synthetic Lf7/i;
.super Ljava/lang/Object;
.source "Distinct.kt"


# static fields
.field private static final a:Lu6/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/l<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lu6/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lf7/i$b;->a:Lf7/i$b;

    sput-object v0, Lf7/i;->a:Lu6/l;

    .line 2
    sget-object v0, Lf7/i$a;->a:Lf7/i$a;

    sput-object v0, Lf7/i;->b:Lu6/p;

    return-void
.end method

.method public static final a(Lf7/d;)Lf7/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf7/d<",
            "+TT;>;)",
            "Lf7/d<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lf7/i;->a:Lu6/l;

    sget-object v1, Lf7/i;->b:Lu6/p;

    invoke-static {p0, v0, v1}, Lf7/i;->b(Lf7/d;Lu6/l;Lu6/p;)Lf7/d;

    move-result-object p0

    return-object p0
.end method

.method private static final b(Lf7/d;Lu6/l;Lu6/p;)Lf7/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lf7/d<",
            "+TT;>;",
            "Lu6/l<",
            "-TT;+",
            "Ljava/lang/Object;",
            ">;",
            "Lu6/p<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lf7/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lf7/c;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lf7/c;

    iget-object v1, v0, Lf7/c;->b:Lu6/l;

    if-ne v1, p1, :cond_0

    iget-object v0, v0, Lf7/c;->c:Lu6/p;

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lf7/c;

    invoke-direct {v0, p0, p1, p2}, Lf7/c;-><init>(Lf7/d;Lu6/l;Lu6/p;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method
