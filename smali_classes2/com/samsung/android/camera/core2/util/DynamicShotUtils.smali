.class public final Lcom/samsung/android/camera/core2/util/DynamicShotUtils;
.super Ljava/lang/Object;
.source "DynamicShotUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(I)Z
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e(I)Z
    .locals 1

    const/high16 v0, 0x20000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(I)I
    .locals 2

    const/high16 v0, -0x10000

    and-int/2addr v0, p0

    or-int/lit8 v0, v0, 0x0

    and-int/lit8 v1, p0, 0x2

    or-int/2addr v0, v1

    and-int/lit8 v1, p0, 0x10

    or-int/2addr v0, v1

    and-int/lit8 v1, p0, 0x20

    or-int/2addr v0, v1

    and-int/lit8 p0, p0, 0x40

    or-int/2addr p0, v0

    return p0
.end method

.method public static g(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static h(Ljava/lang/Integer;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    ushr-int/lit8 p0, p0, 0x10

    return p0
.end method

.method public static i(Ljava/lang/Integer;)I
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static j(Ljava/lang/Integer;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public static k(II)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->h(Ljava/lang/Integer;)I

    move-result p0

    invoke-static {p1}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->f(I)I

    move-result p1

    or-int/2addr p0, p1

    return p0
.end method

.method public static l(II)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/util/DynamicShotUtils;->k(II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static m(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->p:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result p0

    return p0
.end method

.method public static n(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->o:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result p0

    return p0
.end method

.method public static o(I)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object p0

    .line 2
    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->m:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->n:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static p(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->c:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result p0

    return p0
.end method

.method public static q(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->g:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result p0

    return p0
.end method

.method public static r(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->f:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result p0

    return p0
.end method

.method public static s(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->t:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result p0

    return p0
.end method

.method public static t(I)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->s:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->u:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {v0, v1}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->t:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static u(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->b:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result p0

    return p0
.end method

.method public static v(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->u:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result p0

    return p0
.end method

.method public static w(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->d:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result p0

    return p0
.end method

.method public static x(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->l:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result p0

    return p0
.end method

.method public static y(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->D(I)Lcom/samsung/android/camera/core2/container/DynamicShotMode;

    move-result-object p0

    sget-object v0, Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;->q:Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/core2/container/DynamicShotMode;->K(Lcom/samsung/android/camera/core2/container/DynamicShotMode$Property;)Z

    move-result p0

    return p0
.end method
