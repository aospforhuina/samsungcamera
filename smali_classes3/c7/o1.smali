.class public Lc7/o1;
.super Lc7/s1;
.source "JobSupport.kt"

# interfaces
.implements Lc7/t;


# instance fields
.field private final b:Z


# direct methods
.method public constructor <init>(Lc7/l1;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lc7/s1;-><init>(Z)V

    .line 2
    invoke-virtual {p0, p1}, Lc7/s1;->U(Lc7/l1;)V

    .line 3
    invoke-direct {p0}, Lc7/o1;->x0()Z

    move-result p1

    iput-boolean p1, p0, Lc7/o1;->b:Z

    return-void
.end method

.method private final x0()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc7/s1;->Q()Lc7/q;

    move-result-object p0

    instance-of v0, p0, Lc7/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lc7/r;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lc7/r1;->w()Lc7/s1;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_2

    .line 2
    :cond_1
    invoke-virtual {p0}, Lc7/s1;->N()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x1

    return p0

    .line 3
    :cond_2
    invoke-virtual {p0}, Lc7/s1;->Q()Lc7/q;

    move-result-object p0

    instance-of v2, p0, Lc7/r;

    if-eqz v2, :cond_3

    check-cast p0, Lc7/r;

    goto :goto_1

    :cond_3
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lc7/r1;->w()Lc7/s1;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_4
    :goto_2
    return v0
.end method


# virtual methods
.method public N()Z
    .locals 0

    iget-boolean p0, p0, Lc7/o1;->b:Z

    return p0
.end method

.method public O()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
