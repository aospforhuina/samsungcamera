.class final Lc7/h2;
.super Ljava/lang/Object;
.source "CoroutineContext.kt"

# interfaces
.implements Ln6/g$b;
.implements Ln6/g$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln6/g$b;",
        "Ln6/g$c<",
        "Lc7/h2;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lc7/h2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc7/h2;

    invoke-direct {v0}, Lc7/h2;-><init>()V

    sput-object v0, Lc7/h2;->a:Lc7/h2;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lu6/p;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lu6/p<",
            "-TR;-",
            "Ln6/g$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Ln6/g$b$a;->a(Ln6/g$b;Ljava/lang/Object;Lu6/p;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public get(Ln6/g$c;)Ln6/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ln6/g$b;",
            ">(",
            "Ln6/g$c<",
            "TE;>;)TE;"
        }
    .end annotation

    invoke-static {p0, p1}, Ln6/g$b$a;->b(Ln6/g$b;Ln6/g$c;)Ln6/g$b;

    move-result-object p0

    return-object p0
.end method

.method public getKey()Ln6/g$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln6/g$c<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method

.method public minusKey(Ln6/g$c;)Ln6/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/g$c<",
            "*>;)",
            "Ln6/g;"
        }
    .end annotation

    invoke-static {p0, p1}, Ln6/g$b$a;->c(Ln6/g$b;Ln6/g$c;)Ln6/g;

    move-result-object p0

    return-object p0
.end method

.method public plus(Ln6/g;)Ln6/g;
    .locals 0

    invoke-static {p0, p1}, Ln6/g$b$a;->d(Ln6/g$b;Ln6/g;)Ln6/g;

    move-result-object p0

    return-object p0
.end method
