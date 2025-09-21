.class public abstract Ln6/a;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Ln6/g$b;


# instance fields
.field private final key:Ln6/g$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln6/g$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln6/g$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln6/g$c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln6/a;->key:Ln6/g$c;

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

    iget-object p0, p0, Ln6/a;->key:Ln6/g$c;

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
