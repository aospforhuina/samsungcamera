.class La0/j$e;
.super La0/j;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, La0/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public b()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public c(Lx/a;)Z
    .locals 0

    sget-object p0, Lx/a;->b:Lx/a;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public d(ZLx/a;Lx/c;)Z
    .locals 0

    if-eqz p1, :cond_0

    sget-object p0, Lx/a;->c:Lx/a;

    if-eq p2, p0, :cond_1

    :cond_0
    sget-object p0, Lx/a;->a:Lx/a;

    if-ne p2, p0, :cond_2

    :cond_1
    sget-object p0, Lx/c;->b:Lx/c;

    if-ne p3, p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
