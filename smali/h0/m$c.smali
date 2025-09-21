.class Lh0/m$c;
.super Lh0/m;
.source "DownsampleStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lh0/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)Lh0/m$g;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lh0/m$c;->b(IIII)F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lh0/m$g;->b:Lh0/m$g;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p0, Lh0/m;->c:Lh0/m;

    invoke-virtual {p0, p1, p2, p3, p4}, Lh0/m;->a(IIII)Lh0/m$g;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public b(IIII)F
    .locals 0

    .line 1
    sget-object p0, Lh0/m;->c:Lh0/m;

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lh0/m;->b(IIII)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 3
    invoke-static {p1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method
