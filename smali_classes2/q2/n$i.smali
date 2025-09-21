.class Lq2/n$i;
.super Ln2/w;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln2/w<",
        "Lp2/g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln2/w;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lu2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lq2/n$i;->e(Lu2/a;)Lp2/g;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Lu2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lp2/g;

    invoke-virtual {p0, p1, p2}, Lq2/n$i;->f(Lu2/c;Lp2/g;)V

    return-void
.end method

.method public e(Lu2/a;)Lp2/g;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lu2/a;->L()Lu2/b;

    move-result-object p0

    sget-object v0, Lu2/b;->m:Lu2/b;

    if-ne p0, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lu2/a;->H()V

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lp2/g;

    invoke-virtual {p1}, Lu2/a;->J()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lp2/g;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public f(Lu2/c;Lp2/g;)V
    .locals 0

    invoke-virtual {p1, p2}, Lu2/c;->M(Ljava/lang/Number;)Lu2/c;

    return-void
.end method
