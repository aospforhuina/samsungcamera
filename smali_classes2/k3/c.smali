.class public final Lk3/c;
.super Ljava/lang/Object;
.source "EntityScoreGenerator.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk3/c$a;,
        Lk3/c$b;
    }
.end annotation


# static fields
.field public static final a:Lk3/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk3/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lk3/c$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lk3/c;->a:Lk3/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_3

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-lt p0, v0, :cond_2

    .line 3
    iget p0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-gt p0, v0, :cond_1

    .line 4
    iget p0, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "top > bottom"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "left > right"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "height < 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "width < 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final b(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 6

    .line 1
    iget p0, p1, Landroid/graphics/Point;->x:I

    int-to-double v0, p0

    iget p0, p2, Landroid/graphics/Point;->x:I

    int-to-double v2, p0

    sub-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 2
    iget p0, p1, Landroid/graphics/Point;->y:I

    int-to-double p0, p0

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-double v4, p2

    sub-double/2addr p0, v4

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private final c(Landroid/graphics/Rect;)D
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-double v0, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-double p0, p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private final e(DD)F
    .locals 0

    sub-double p0, p3, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    div-double/2addr p0, p3

    double-to-float p0, p0

    return p0
.end method


# virtual methods
.method public final d(Ljava/lang/String;Lk3/d;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 3

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p4, :cond_0

    goto :goto_1

    .line 1
    :cond_0
    :try_start_0
    sget-object v1, Lk6/k;->a:Lk6/k$a;

    invoke-direct {p0, p4}, Lk3/c;->a(Landroid/graphics/Rect;)V

    sget-object v1, Lk6/q;->a:Lk6/q;

    invoke-static {v1}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lk6/k;->a:Lk6/k$a;

    invoke-static {v1}, Lk6/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lk6/k;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    :goto_0
    invoke-static {v1}, Lk6/k;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    check-cast v1, Lk6/q;

    if-nez v1, :cond_2

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 4
    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 5
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    invoke-direct {v1, v2, p3}, Landroid/graphics/Point;-><init>(II)V

    .line 6
    invoke-direct {p0, v0, v1}, Lk3/c;->b(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    .line 7
    invoke-direct {p0, p4}, Lk3/c;->c(Landroid/graphics/Rect;)D

    move-result-wide p3

    .line 8
    invoke-direct {p0, v0, v1, p3, p4}, Lk3/c;->e(DD)F

    move-result p0

    move v0, p0

    .line 9
    :goto_1
    sget-object p0, Lk3/c$b;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    const p3, 0x3f4ccccd    # 0.8f

    if-eq p0, p2, :cond_4

    goto :goto_2

    .line 10
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 p1, 0x4

    if-gt p0, p1, :cond_5

    const p3, 0x3f333333    # 0.7f

    :cond_5
    :goto_2
    const p0, 0x3f666666    # 0.9f

    mul-float/2addr p3, p0

    const p0, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, p0

    add-float/2addr p3, v0

    return p3
.end method
