.class Lp2/h$b;
.super Ljava/util/AbstractSet;
.source "LinkedTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp2/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lp2/h;


# direct methods
.method constructor <init>(Lp2/h;)V
    .locals 0

    iput-object p1, p0, Lp2/h$b;->a:Lp2/h;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lp2/h$b;->a:Lp2/h;

    invoke-virtual {p0}, Lp2/h;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lp2/h$b;->a:Lp2/h;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Lp2/h;->d(Ljava/util/Map$Entry;)Lp2/h$e;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lp2/h$b$a;

    invoke-direct {v0, p0}, Lp2/h$b$a;-><init>(Lp2/h$b;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lp2/h$b;->a:Lp2/h;

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {v0, p1}, Lp2/h;->d(Ljava/util/Map$Entry;)Lp2/h$e;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object p0, p0, Lp2/h$b;->a:Lp2/h;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lp2/h;->g(Lp2/h$e;Z)V

    return v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lp2/h$b;->a:Lp2/h;

    iget p0, p0, Lp2/h;->c:I

    return p0
.end method
