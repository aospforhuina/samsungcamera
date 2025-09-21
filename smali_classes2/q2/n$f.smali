.class Lq2/n$f;
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
        "Ljava/lang/String;",
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

    invoke-virtual {p0, p1}, Lq2/n$f;->e(Lu2/a;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Lu2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lq2/n$f;->f(Lu2/c;Ljava/lang/String;)V

    return-void
.end method

.method public e(Lu2/a;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lu2/a;->L()Lu2/b;

    move-result-object p0

    .line 2
    sget-object v0, Lu2/b;->m:Lu2/b;

    if-ne p0, v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lu2/a;->H()V

    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_0
    sget-object v0, Lu2/b;->l:Lu2/b;

    if-ne p0, v0, :cond_1

    .line 5
    invoke-virtual {p1}, Lu2/a;->B()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    invoke-virtual {p1}, Lu2/a;->J()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public f(Lu2/c;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Lu2/c;->N(Ljava/lang/String;)Lu2/c;

    return-void
.end method
