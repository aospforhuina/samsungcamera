.class public Lm3/w;
.super Ljava/lang/Object;
.source "VisionTextDrawHelperImpl.java"

# interfaces
.implements Lj3/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm3/w$b;,
        Lm3/w$d;,
        Lm3/w$h;,
        Lm3/w$e;,
        Lm3/w$f;,
        Lm3/w$c;,
        Lm3/w$g;
    }
.end annotation


# static fields
.field private static final h0:Z

.field private static final i0:Z

.field private static final j0:Z

.field private static k0:Ljava/lang/String;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Ljava/lang/String;

.field private J:I

.field private K:I

.field private L:Landroid/graphics/Path;

.field private M:I

.field private N:Landroid/os/Vibrator;

.field private O:Landroid/os/Handler;

.field private P:I

.field private Q:I

.field private R:Landroid/os/VibrationEffect;

.field private S:Landroid/view/accessibility/AccessibilityManager;

.field private T:I

.field private final U:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm3/w$c;",
            ">;"
        }
    .end annotation
.end field

.field private final V:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm3/w$g;",
            ">;"
        }
    .end annotation
.end field

.field private final W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm3/w$f;",
            ">;"
        }
    .end annotation
.end field

.field private final X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private final Y:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ll3/a$h;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Lm3/w$e;

.field private a:Landroid/content/Context;

.field private a0:Lm3/w$e;

.field private b:Landroid/view/View;

.field private b0:Lm3/w$d;

.field private c:Lm3/f;

.field private c0:I

.field private d:Z

.field d0:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Paint;

.field e0:Landroid/graphics/Rect;

.field private f:Ll3/a;

.field f0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field g0:Lj3/d$a;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Landroid/graphics/Bitmap;

.field private n:I

.field private o:I

.field private p:F

.field private q:Landroid/graphics/RectF;

.field private r:Landroid/graphics/Point;

.field private s:Landroid/graphics/Rect;

.field t:Z

.field private u:Z

.field private v:Z

.field w:Landroid/graphics/Paint;

.field private x:Landroid/os/Handler;

.field private y:Lm3/w$b;

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "visiontext.debug.text.info"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lm3/w;->h0:Z

    const-string/jumbo v0, "visiontext.debug"

    .line 2
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    sput-boolean v0, Lm3/w;->i0:Z

    const-string/jumbo v0, "visiontext.debug.draw"

    .line 3
    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    sput-boolean v1, Lm3/w;->j0:Z

    const-string v0, ""

    .line 4
    sput-object v0, Lm3/w;->k0:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lm3/w;->d:Z

    .line 3
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lm3/w;->e:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lm3/w;->f:Ll3/a;

    const-string v2, ""

    .line 5
    iput-object v2, p0, Lm3/w;->g:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Lm3/w;->h:Ljava/lang/String;

    .line 7
    iput-object v1, p0, Lm3/w;->i:Ljava/lang/String;

    .line 8
    iput-object v1, p0, Lm3/w;->j:Ljava/lang/String;

    const/4 v2, 0x0

    .line 9
    iput-boolean v2, p0, Lm3/w;->k:Z

    .line 10
    iput-boolean v2, p0, Lm3/w;->l:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 11
    iput v3, p0, Lm3/w;->p:F

    .line 12
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lm3/w;->q:Landroid/graphics/RectF;

    .line 13
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v4, p0, Lm3/w;->r:Landroid/graphics/Point;

    .line 14
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lm3/w;->s:Landroid/graphics/Rect;

    .line 15
    iput-boolean v2, p0, Lm3/w;->t:Z

    .line 16
    iput-boolean v2, p0, Lm3/w;->u:Z

    .line 17
    iput-boolean v0, p0, Lm3/w;->v:Z

    .line 18
    iput v3, p0, Lm3/w;->z:F

    .line 19
    iput v2, p0, Lm3/w;->A:I

    .line 20
    iput v2, p0, Lm3/w;->B:I

    .line 21
    iput-boolean v2, p0, Lm3/w;->C:Z

    .line 22
    iput-boolean v0, p0, Lm3/w;->D:Z

    .line 23
    iput-boolean v0, p0, Lm3/w;->E:Z

    .line 24
    iput-boolean v2, p0, Lm3/w;->F:Z

    .line 25
    iput-boolean v2, p0, Lm3/w;->G:Z

    .line 26
    iput-boolean v2, p0, Lm3/w;->H:Z

    .line 27
    iput-object v1, p0, Lm3/w;->I:Ljava/lang/String;

    .line 28
    iput v2, p0, Lm3/w;->J:I

    .line 29
    iput v2, p0, Lm3/w;->K:I

    .line 30
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, p0, Lm3/w;->L:Landroid/graphics/Path;

    .line 31
    iput v2, p0, Lm3/w;->M:I

    const/16 v3, 0x29

    .line 32
    iput v3, p0, Lm3/w;->P:I

    .line 33
    iput-object v1, p0, Lm3/w;->S:Landroid/view/accessibility/AccessibilityManager;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lm3/w;->U:Ljava/util/List;

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lm3/w;->V:Ljava/util/List;

    .line 36
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lm3/w;->W:Ljava/util/List;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lm3/w;->X:Ljava/util/List;

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lm3/w;->Y:Ljava/util/Map;

    .line 39
    new-instance v1, Lm3/w$e;

    invoke-direct {v1, v0}, Lm3/w$e;-><init>(Z)V

    iput-object v1, p0, Lm3/w;->Z:Lm3/w$e;

    .line 40
    new-instance v0, Lm3/w$e;

    invoke-direct {v0, v2}, Lm3/w$e;-><init>(Z)V

    iput-object v0, p0, Lm3/w;->a0:Lm3/w$e;

    .line 41
    sget-object v0, Lm3/w$d;->a:Lm3/w$d;

    iput-object v0, p0, Lm3/w;->b0:Lm3/w$d;

    const/4 v0, -0x1

    .line 42
    iput v0, p0, Lm3/w;->c0:I

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lm3/w;->d0:Landroid/graphics/Rect;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lm3/w;->e0:Landroid/graphics/Rect;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm3/w;->f0:Ljava/util/ArrayList;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create VisionTextDrawHelperImpl context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextDrawHelperImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iput-object p1, p0, Lm3/w;->a:Landroid/content/Context;

    .line 48
    new-instance p1, Lm3/f;

    invoke-direct {p1, p0}, Lm3/f;-><init>(Lm3/w;)V

    iput-object p1, p0, Lm3/w;->c:Lm3/f;

    return-void
.end method

.method static synthetic A(Landroid/graphics/PointF;Landroid/graphics/Point;)F
    .locals 0

    invoke-static {p0, p1}, Lm3/w;->R(Landroid/graphics/PointF;Landroid/graphics/Point;)F

    move-result p0

    return p0
.end method

.method static synthetic B(Landroid/graphics/Point;Landroid/graphics/PointF;F)Landroid/graphics/Point;
    .locals 0

    invoke-static {p0, p1, p2}, Lm3/w;->J(Landroid/graphics/Point;Landroid/graphics/PointF;F)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private B0(Ll3/a$f;)Z
    .locals 12

    .line 1
    invoke-virtual {p1}, Ll3/a$f;->f()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll3/a$h;

    invoke-virtual {v1}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v1

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll3/a$h;

    invoke-virtual {v2}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v2

    aget-object v2, v2, v0

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll3/a$h;

    invoke-virtual {v4}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v4, v4, v5

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll3/a$h;

    invoke-virtual {v6}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v6

    aget-object v6, v6, v0

    .line 6
    invoke-direct {p0, v4, v6}, Lm3/w;->j0(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v6

    double-to-int v4, v6

    .line 7
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll3/a$h;

    invoke-virtual {v6}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v6

    aget-object v6, v6, v0

    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll3/a$h;

    invoke-virtual {v7}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v7

    aget-object v7, v7, v0

    iget v7, v7, Landroid/graphics/Point;->y:I

    move v8, v0

    .line 9
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 10
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ll3/a$h;

    .line 11
    invoke-virtual {v9}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v10

    aget-object v10, v10, v5

    invoke-virtual {v9}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v11

    aget-object v11, v11, v0

    .line 12
    invoke-direct {p0, v10, v11}, Lm3/w;->j0(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v10

    double-to-int v10, v10

    if-ge v4, v10, :cond_0

    .line 13
    invoke-virtual {v9}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v9}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v10

    aget-object v10, v10, v0

    invoke-direct {p0, v4, v10}, Lm3/w;->j0(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v10

    double-to-int v4, v10

    .line 14
    :cond_0
    invoke-virtual {v9}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v10

    aget-object v10, v10, v0

    iget v10, v10, Landroid/graphics/Point;->y:I

    if-ge v6, v10, :cond_1

    .line 15
    invoke-virtual {v9}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v6

    aget-object v6, v6, v0

    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 16
    :cond_1
    invoke-virtual {v9}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v10

    aget-object v10, v10, v0

    iget v10, v10, Landroid/graphics/Point;->y:I

    if-le v7, v10, :cond_2

    .line 17
    invoke-virtual {v9}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v7

    aget-object v7, v7, v0

    iget v7, v7, Landroid/graphics/Point;->y:I

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    mul-int/2addr v4, v5

    .line 18
    div-int/lit8 v4, v4, 0x4

    add-int p0, v4, v1

    if-le v6, p0, :cond_4

    add-int p0, v4, v2

    if-le v6, p0, :cond_4

    move p0, v3

    goto :goto_1

    :cond_4
    move p0, v0

    :goto_1
    add-int/2addr v7, v4

    if-ge v7, v1, :cond_5

    if-ge v7, v2, :cond_5

    move p1, v3

    goto :goto_2

    :cond_5
    move p1, v0

    :goto_2
    if-nez p1, :cond_6

    if-eqz p0, :cond_7

    :cond_6
    move v0, v3

    :cond_7
    return v0
.end method

.method static synthetic C(Lm3/w;)Landroid/os/VibrationEffect;
    .locals 0

    iget-object p0, p0, Lm3/w;->R:Landroid/os/VibrationEffect;

    return-object p0
.end method

.method private C0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/w;->S:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm3/w;->S:Landroid/view/accessibility/AccessibilityManager;

    .line 3
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic D(Lm3/w;)Landroid/os/Vibrator;
    .locals 0

    iget-object p0, p0, Lm3/w;->N:Landroid/os/Vibrator;

    return-object p0
.end method

.method static synthetic E()Z
    .locals 1

    sget-boolean v0, Lm3/w;->i0:Z

    return v0
.end method

.method private E0()Z
    .locals 2

    iget-object p0, p0, Lm3/w;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic F()Z
    .locals 1

    sget-boolean v0, Lm3/w;->j0:Z

    return v0
.end method

.method private static synthetic F0(ILm3/w$f;)Z
    .locals 0

    iget p1, p1, Lm3/w$f;->a:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic G([Landroid/graphics/Point;FLandroid/graphics/Point;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1, p2}, Lm3/w;->g0([Landroid/graphics/Point;FLandroid/graphics/Point;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic G0(Lm3/w$f;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm3/w$f;->g(Z)V

    return-void
.end method

.method static synthetic H()Z
    .locals 1

    sget-boolean v0, Lm3/w;->h0:Z

    return v0
.end method

.method private static synthetic H0(Landroid/graphics/Canvas;Lm3/w$f;)V
    .locals 0

    invoke-virtual {p1, p0}, Lm3/w$f;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic I(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    invoke-static {p0, p1}, Lm3/w;->L(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic I0(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lm3/w$g;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lm3/w$g;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static J(Landroid/graphics/Point;Landroid/graphics/PointF;F)Landroid/graphics/Point;
    .locals 4

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, p2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p2, p1

    add-float/2addr p2, v3

    float-to-int p1, p2

    add-int/2addr p0, p1

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static synthetic J0(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lm3/w$g;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lm3/w$g;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static K(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 3

    .line 1
    invoke-static {p0}, Lm3/w;->M(Landroid/graphics/Point;)F

    move-result v0

    .line 2
    new-instance v1, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-direct {v1, v2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method private static synthetic K0(FLandroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, p0

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    int-to-float p2, p2

    mul-float/2addr p2, p0

    iget p0, p1, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    add-float/2addr p2, p0

    add-float/2addr p2, v2

    float-to-int p0, p2

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private static L(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 3

    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, p0

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method private synthetic L0(Lm3/w$c;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 2
    iget-object v1, p1, Lm3/w$c;->c:[Landroid/graphics/Point;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    iget-object v1, p1, Lm3/w$c;->c:[Landroid/graphics/Point;

    array-length v1, v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p1, Lm3/w$c;->c:[Landroid/graphics/Point;

    aget-object v4, v3, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 6
    iget-object p0, p0, Lm3/w;->L:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private static M(Landroid/graphics/Point;)F
    .locals 2

    iget v0, p0, Landroid/graphics/Point;->x:I

    mul-int/2addr v0, v0

    iget p0, p0, Landroid/graphics/Point;->y:I

    mul-int/2addr p0, p0

    add-int/2addr v0, p0

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private synthetic M0([Landroid/graphics/Point;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    .line 2
    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x1

    .line 3
    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v1, 0x2

    .line 4
    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aget-object v1, p1, v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v1, 0x3

    .line 5
    aget-object v2, p1, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    aget-object p1, p1, v1

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 7
    iget-object p0, p0, Lm3/w;->L:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method static N(Landroid/content/Context;F)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method private synthetic N0(Lm3/w$c;)V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 2
    iget-object v1, p1, Lm3/w$c;->c:[Landroid/graphics/Point;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    iget-object v1, p1, Lm3/w$c;->c:[Landroid/graphics/Point;

    array-length v1, v1

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v1, :cond_0

    .line 4
    iget-object v3, p1, Lm3/w$c;->c:[Landroid/graphics/Point;

    aget-object v4, v3, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    aget-object v3, v3, v2

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 6
    iget-object p0, p0, Lm3/w;->L:Landroid/graphics/Path;

    invoke-virtual {p0, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    return-void
.end method

.method private O(Ll3/a;FII)V
    .locals 31

    move-object/from16 v1, p0

    move/from16 v0, p2

    const-string v9, "VisionTextDrawHelperImpl"

    .line 1
    :try_start_0
    iget-object v2, v1, Lm3/w;->X:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 2
    iget-object v2, v1, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 3
    iget-object v2, v1, Lm3/w;->Y:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 4
    iget-object v2, v1, Lm3/w;->V:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 5
    iget-object v2, v1, Lm3/w;->U:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6
    invoke-virtual/range {p1 .. p1}, Ll3/a;->d()Ljava/util/List;

    move-result-object v2

    .line 7
    sget-boolean v3, Lm3/w;->h0:Z

    if-eqz v3, :cond_0

    const-string v3, "Generated entity infos"

    .line 8
    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    .line 9
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 10
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll3/a$e;

    .line 11
    sget-boolean v5, Lm3/w;->h0:Z

    if-eqz v5, :cond_1

    .line 12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "entity "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    :cond_1
    new-instance v5, Lm3/w$c;

    invoke-virtual {v4}, Ll3/a$e;->c()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v4}, Ll3/a$e;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Ll3/a$e;->d()[Landroid/graphics/Point;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Lm3/w$c;-><init>(ILjava/lang/String;[Landroid/graphics/Point;)V

    const/4 v6, 0x0

    .line 14
    :goto_1
    iget-object v7, v5, Lm3/w$c;->c:[Landroid/graphics/Point;

    array-length v8, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, ", start y : "

    const-string v12, ", start x : "

    const/high16 v13, 0x3f000000    # 0.5f

    if-ge v6, v8, :cond_3

    .line 15
    :try_start_1
    aget-object v8, v7, v6

    aget-object v14, v7, v6

    iget v14, v14, Landroid/graphics/Point;->x:I

    int-to-float v14, v14

    mul-float/2addr v14, v0

    iget-object v15, v1, Lm3/w;->r:Landroid/graphics/Point;

    iget v10, v15, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    add-float/2addr v14, v10

    add-float/2addr v14, v13

    float-to-int v10, v14

    iput v10, v8, Landroid/graphics/Point;->x:I

    .line 16
    aget-object v8, v7, v6

    aget-object v7, v7, v6

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, v0

    iget v10, v15, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    add-float/2addr v7, v10

    add-float/2addr v7, v13

    float-to-int v7, v7

    iput v7, v8, Landroid/graphics/Point;->y:I

    .line 17
    sget-boolean v7, Lm3/w;->h0:Z

    if-eqz v7, :cond_2

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    point "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lm3/w$c;->c:[Landroid/graphics/Point;

    aget-object v8, v8, v6

    iget v8, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lm3/w$c;->c:[Landroid/graphics/Point;

    aget-object v8, v8, v6

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 19
    :cond_3
    iget-object v6, v1, Lm3/w;->U:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v4}, Ll3/a$e;->i()[Ll3/a$g;

    move-result-object v5

    array-length v5, v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_5

    .line 21
    new-instance v7, Lm3/w$g;

    .line 22
    invoke-virtual {v4}, Ll3/a$e;->c()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4}, Ll3/a$e;->g()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Ll3/a$e;->i()[Ll3/a$g;

    move-result-object v14

    aget-object v14, v14, v6

    invoke-direct {v7, v8, v10, v14}, Lm3/w$g;-><init>(ILjava/lang/String;Ll3/a$g;)V

    .line 23
    iget-object v8, v7, Lm3/w$g;->c:Landroid/graphics/PointF;

    iget v10, v8, Landroid/graphics/PointF;->x:F

    mul-float/2addr v10, v0

    iget-object v14, v1, Lm3/w;->r:Landroid/graphics/Point;

    iget v15, v14, Landroid/graphics/Point;->x:I

    move-object/from16 v16, v2

    int-to-float v2, v15

    add-float/2addr v10, v2

    add-float/2addr v10, v13

    iput v10, v8, Landroid/graphics/PointF;->x:F

    .line 24
    iget v2, v8, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v0

    iget v10, v14, Landroid/graphics/Point;->y:I

    int-to-float v14, v10

    add-float/2addr v2, v14

    add-float/2addr v2, v13

    iput v2, v8, Landroid/graphics/PointF;->y:F

    .line 25
    iget-object v2, v7, Lm3/w$g;->d:Landroid/graphics/PointF;

    iget v8, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v8, v0

    int-to-float v14, v15

    add-float/2addr v8, v14

    add-float/2addr v8, v13

    iput v8, v2, Landroid/graphics/PointF;->x:F

    .line 26
    iget v8, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v8, v0

    int-to-float v10, v10

    add-float/2addr v8, v10

    add-float/2addr v8, v13

    iput v8, v2, Landroid/graphics/PointF;->y:F

    .line 27
    sget-boolean v2, Lm3/w;->h0:Z

    if-eqz v2, :cond_4

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "        underline "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lm3/w;->V:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lm3/w$g;->c:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lm3/w$g;->c:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", stop x : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lm3/w$g;->d:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ", stop y : "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lm3/w$g;->d:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_4
    iget-object v2, v1, Lm3/w;->V:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v16

    goto/16 :goto_2

    :cond_5
    move-object/from16 v16, v2

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 30
    :cond_6
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 31
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 32
    invoke-virtual/range {p1 .. p1}, Ll3/a;->f()Ljava/util/List;

    move-result-object v10

    const/4 v4, 0x0

    const/4 v11, 0x0

    .line 33
    :goto_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v5

    const/4 v12, 0x1

    if-ge v11, v5, :cond_13

    const/4 v13, 0x4

    new-array v5, v13, [Landroid/graphics/Point;

    .line 34
    new-instance v6, Landroid/graphics/Point;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v5, v7

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v5, v12

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    const/4 v14, 0x2

    aput-object v6, v5, v14

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v7, v7}, Landroid/graphics/Point;-><init>(II)V

    const/4 v15, 0x3

    aput-object v6, v5, v15

    .line 35
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Ll3/a$f;

    .line 36
    invoke-virtual {v8}, Ll3/a$f;->f()Ljava/util/List;

    move-result-object v7

    .line 37
    invoke-direct {v1, v8}, Lm3/w;->B0(Ll3/a$f;)Z

    move-result v23

    .line 38
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v24, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_11

    .line 39
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll3/a$h;

    if-eqz v23, :cond_7

    .line 40
    invoke-virtual {v3}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v2

    iget-object v15, v1, Lm3/w;->r:Landroid/graphics/Point;

    invoke-static {v2, v0, v15}, Lm3/w;->g0([Landroid/graphics/Point;FLandroid/graphics/Point;)Ljava/util/List;

    move-result-object v2

    const/4 v15, 0x0

    new-array v14, v15, [Landroid/graphics/Point;

    .line 41
    invoke-interface {v2, v14}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Point;

    .line 42
    iget-object v14, v1, Lm3/w;->X:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_7
    if-nez v4, :cond_8

    .line 43
    invoke-virtual {v8}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object v2

    iget-object v14, v1, Lm3/w;->r:Landroid/graphics/Point;

    invoke-static {v2, v0, v14}, Lm3/w;->g0([Landroid/graphics/Point;FLandroid/graphics/Point;)Ljava/util/List;

    move-result-object v2

    const/4 v14, 0x0

    new-array v15, v14, [Landroid/graphics/Point;

    invoke-interface {v2, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/graphics/Point;

    :cond_8
    :goto_5
    move-object v14, v2

    if-nez v14, :cond_9

    const-string v2, "createRectList(): mar==null"

    .line 44
    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v26, v4

    move/from16 v28, v6

    move-object v6, v7

    move-object/from16 v30, v8

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v15, 0x3

    goto/16 :goto_a

    .line 45
    :cond_9
    invoke-virtual {v3}, Ll3/a$h;->f()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 46
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v12, :cond_a

    .line 47
    new-instance v2, Lm3/w$h;

    iget-object v15, v1, Lm3/w;->r:Landroid/graphics/Point;

    invoke-direct {v2, v3, v0, v15}, Lm3/w$h;-><init>(Ll3/a$h;FLandroid/graphics/Point;)V

    move-object/from16 v25, v3

    move/from16 v26, v4

    move-object/from16 v27, v5

    move/from16 v28, v6

    move-object/from16 v29, v7

    move-object/from16 v30, v8

    goto :goto_6

    .line 48
    :cond_a
    new-instance v15, Lm3/w$h;

    iget-object v2, v1, Lm3/w;->r:Landroid/graphics/Point;

    move-object/from16 v18, v2

    move-object v2, v15

    move-object/from16 v25, v3

    move/from16 v26, v4

    move-object v4, v14

    move-object/from16 v27, v5

    move/from16 v5, p2

    move/from16 v28, v6

    move-object/from16 v6, v18

    move-object/from16 v29, v7

    move/from16 v7, p3

    move-object/from16 v30, v8

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lm3/w$h;-><init>(Ll3/a$h;[Landroid/graphics/Point;FLandroid/graphics/Point;II)V

    move-object v2, v15

    :goto_6
    if-nez v26, :cond_c

    .line 49
    iget-object v3, v1, Lm3/w;->W:Ljava/util/List;

    .line 50
    invoke-virtual/range {v25 .. v25}, Ll3/a$h;->d()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual/range {v25 .. v25}, Ll3/a$h;->g()Ljava/lang/String;

    move-result-object v19

    new-array v4, v13, [Landroid/graphics/Point;

    .line 51
    invoke-virtual {v2}, Lm3/w$h;->c()Landroid/graphics/Point;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 52
    invoke-virtual {v2}, Lm3/w$h;->d()Landroid/graphics/Point;

    move-result-object v5

    aput-object v5, v4, v12

    .line 53
    invoke-virtual {v2}, Lm3/w$h;->b()Landroid/graphics/Point;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 54
    invoke-virtual {v2}, Lm3/w$h;->a()Landroid/graphics/Point;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 55
    invoke-virtual/range {v25 .. v25}, Ll3/a$h;->f()Landroid/graphics/Rect;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v16, v11

    move/from16 v17, v24

    move-object/from16 v20, v4

    .line 56
    invoke-static/range {v16 .. v22}, Lm3/w$f;->a(IIILjava/lang/String;[Landroid/graphics/Point;Landroid/graphics/Rect;Z)Lm3/w$f;

    move-result-object v4

    .line 57
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v23, :cond_b

    .line 58
    invoke-virtual {v2}, Lm3/w$h;->e()[Landroid/graphics/Point;

    move-result-object v3

    move-object/from16 v27, v3

    :cond_b
    move-object/from16 v6, v29

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v15, 0x3

    goto/16 :goto_8

    :cond_c
    const/4 v3, -0x1

    .line 59
    invoke-virtual/range {v25 .. v25}, Ll3/a$h;->d()Ljava/lang/Integer;

    move-result-object v4

    add-int/lit8 v5, v26, -0x1

    move-object/from16 v6, v29

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll3/a$h;

    invoke-virtual {v5}, Ll3/a$h;->d()Ljava/lang/Integer;

    move-result-object v5

    if-ne v4, v5, :cond_d

    .line 60
    invoke-virtual/range {v25 .. v25}, Ll3/a$h;->d()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_d
    move/from16 v18, v3

    .line 61
    iget-object v3, v1, Lm3/w;->W:Ljava/util/List;

    const-string v19, " "

    new-array v4, v13, [Landroid/graphics/Point;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    .line 62
    invoke-virtual {v2}, Lm3/w$h;->c()Landroid/graphics/Point;

    move-result-object v5

    aput-object v5, v4, v12

    .line 63
    invoke-virtual {v2}, Lm3/w$h;->a()Landroid/graphics/Point;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const/4 v5, 0x3

    aput-object v16, v4, v5

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    const/16 v22, 0x0

    move/from16 v16, v11

    move/from16 v17, v24

    move-object/from16 v20, v4

    .line 64
    invoke-static/range {v16 .. v22}, Lm3/w$f;->a(IIILjava/lang/String;[Landroid/graphics/Point;Landroid/graphics/Rect;Z)Lm3/w$f;

    move-result-object v4

    .line 65
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v3, v1, Lm3/w;->Y:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v24, v24, 0x1

    .line 67
    iget-object v3, v1, Lm3/w;->W:Ljava/util/List;

    .line 68
    invoke-virtual/range {v25 .. v25}, Ll3/a$h;->d()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    invoke-virtual/range {v25 .. v25}, Ll3/a$h;->g()Ljava/lang/String;

    move-result-object v19

    new-array v4, v13, [Landroid/graphics/Point;

    .line 69
    invoke-virtual {v2}, Lm3/w$h;->c()Landroid/graphics/Point;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v4, v8

    .line 70
    invoke-virtual {v2}, Lm3/w$h;->d()Landroid/graphics/Point;

    move-result-object v7

    aput-object v7, v4, v12

    .line 71
    invoke-virtual {v2}, Lm3/w$h;->b()Landroid/graphics/Point;

    move-result-object v7

    const/4 v15, 0x2

    aput-object v7, v4, v15

    .line 72
    invoke-virtual {v2}, Lm3/w$h;->a()Landroid/graphics/Point;

    move-result-object v7

    const/4 v15, 0x3

    aput-object v7, v4, v15

    .line 73
    invoke-virtual/range {v25 .. v25}, Ll3/a$h;->f()Landroid/graphics/Rect;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v16, v11

    move/from16 v17, v24

    move-object/from16 v20, v4

    .line 74
    invoke-static/range {v16 .. v22}, Lm3/w$f;->a(IIILjava/lang/String;[Landroid/graphics/Point;Landroid/graphics/Rect;Z)Lm3/w$f;

    move-result-object v4

    .line 75
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v23, :cond_e

    .line 76
    invoke-virtual {v2}, Lm3/w$h;->d()Landroid/graphics/Point;

    move-result-object v3

    move-object/from16 v4, v27

    aput-object v3, v4, v12

    .line 77
    invoke-virtual {v2}, Lm3/w$h;->b()Landroid/graphics/Point;

    move-result-object v3

    const/4 v7, 0x2

    aput-object v3, v4, v7

    goto :goto_7

    :cond_e
    move-object/from16 v4, v27

    const/4 v7, 0x2

    :goto_7
    move-object/from16 v27, v4

    .line 78
    :goto_8
    invoke-virtual {v2}, Lm3/w$h;->b()Landroid/graphics/Point;

    move-result-object v3

    .line 79
    invoke-virtual {v2}, Lm3/w$h;->d()Landroid/graphics/Point;

    move-result-object v2

    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move-object/from16 v5, v27

    goto :goto_9

    :cond_f
    move-object/from16 v25, v3

    move/from16 v26, v4

    move-object v4, v5

    move/from16 v28, v6

    move-object v6, v7

    move-object/from16 v30, v8

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v15, 0x3

    .line 80
    iget-object v2, v1, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 81
    iget-object v2, v1, Lm3/w;->W:Ljava/util/List;

    .line 82
    invoke-virtual {v1, v2}, Lm3/w;->n0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm3/w$f;

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lm3/w$f;->d:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v25 .. v25}, Ll3/a$h;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lm3/w$f;->d:Ljava/lang/String;

    :cond_10
    move-object v5, v4

    .line 84
    :goto_9
    iget-object v2, v1, Lm3/w;->Y:Ljava/util/Map;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v4, v25

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v24, v24, 0x1

    :goto_a
    add-int/lit8 v4, v26, 0x1

    move-object v2, v14

    move-object/from16 v8, v30

    move v14, v7

    move-object v7, v6

    move/from16 v6, v28

    goto/16 :goto_4

    :cond_11
    move-object v4, v5

    const/4 v8, 0x0

    if-nez v23, :cond_12

    .line 85
    iget-object v2, v1, Lm3/w;->X:Ljava/util/List;

    iget v3, v1, Lm3/w;->M:I

    .line 86
    invoke-static {v4, v4, v3, v3}, Lm3/w;->r0([Landroid/graphics/Point;[Landroid/graphics/Point;II)[Landroid/graphics/Point;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v24

    goto/16 :goto_3

    .line 87
    :cond_13
    iget-object v0, v1, Lm3/w;->b:Landroid/view/View;

    sget-object v2, Lm3/w;->k0:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, v1, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 89
    iget-object v0, v1, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setFocusable(Z)V

    .line 90
    iget-object v0, v1, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v0, v12}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 91
    invoke-direct/range {p0 .. p0}, Lm3/w;->y0()V

    .line 92
    invoke-direct/range {p0 .. p0}, Lm3/w;->x0()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    const-string v2, "Failed to change background"

    .line 93
    invoke-static {v9, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createRectList selectableWordList size = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static synthetic O0(Lm3/w$f;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lm3/w$f;->g(Z)V

    return-void
.end method

.method private static synthetic P0(Lm3/w$f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm3/w$f;->g(Z)V

    return-void
.end method

.method private Q()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lm3/w;->h1()V

    .line 2
    iget-boolean v0, p0, Lm3/w;->F:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lm3/w;->P:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lm3/w;->F:Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x29

    .line 5
    iput v0, p0, Lm3/w;->P:I

    .line 6
    :goto_0
    iget v0, p0, Lm3/w;->P:I

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    iput v0, p0, Lm3/w;->Q:I

    const/4 v1, -0x1

    .line 7
    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    iput-object v0, p0, Lm3/w;->R:Landroid/os/VibrationEffect;

    .line 8
    iget-object v0, p0, Lm3/w;->O:Landroid/os/Handler;

    new-instance v1, Lm3/w$a;

    invoke-direct {v1, p0}, Lm3/w$a;-><init>(Lm3/w;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static synthetic Q0(Ljava/util/List;Lm3/w$f;)V
    .locals 1

    iget v0, p1, Lm3/w$f;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lm3/w$f;->g(Z)V

    return-void
.end method

.method private static R(Landroid/graphics/PointF;Landroid/graphics/Point;)F
    .locals 2

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method private R0(II)Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "makeAdjacentStr : baseIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " direction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextDrawHelperImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x78

    const-string v2, " "

    const-string v3, "\n"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne p2, v4, :cond_3

    add-int/lit8 p2, p1, -0x1

    move v4, p2

    move v6, v5

    :goto_0
    if-lez v4, :cond_7

    .line 3
    iget-object v7, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm3/w$f;

    .line 4
    iget-object v8, p0, Lm3/w;->Y:Ljava/util/Map;

    iget v9, v7, Lm3/w$f;->b:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ll3/a$h;

    if-eqz v8, :cond_2

    if-ne v4, p2, :cond_0

    .line 5
    iget v6, v7, Lm3/w$f;->a:I

    if-eq v6, p1, :cond_1

    .line 6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7
    :cond_0
    iget v8, v7, Lm3/w$f;->a:I

    if-eq v6, v8, :cond_1

    .line 8
    invoke-virtual {v0, v5, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v8

    .line 9
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7}, Lm3/w$f;->c()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    if-gt v8, v1, :cond_7

    .line 10
    invoke-virtual {v7}, Lm3/w$f;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v0, v5, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne p2, v4, :cond_7

    add-int/lit8 p2, p1, 0x1

    move v4, p2

    .line 12
    :goto_3
    iget-object v6, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 13
    iget-object v6, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm3/w$f;

    .line 14
    iget-object v7, p0, Lm3/w;->Y:Ljava/util/Map;

    iget v8, v6, Lm3/w$f;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll3/a$h;

    if-eqz v7, :cond_6

    if-ne v4, p2, :cond_4

    .line 15
    iget v5, v6, Lm3/w$f;->a:I

    if-eq v5, p1, :cond_5

    .line 16
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 17
    :cond_4
    iget v7, v6, Lm3/w$f;->a:I

    if-eq v5, v7, :cond_5

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    .line 19
    :cond_5
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6}, Lm3/w$f;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    if-gt v7, v1, :cond_7

    .line 20
    invoke-virtual {v6}, Lm3/w$f;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 21
    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 22
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private S(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 1

    iget p0, p1, Landroid/graphics/Point;->x:I

    iget v0, p2, Landroid/graphics/Point;->x:I

    mul-int/2addr p0, v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    mul-int/2addr p1, p2

    add-int/2addr p0, p1

    return p0
.end method

.method private S0()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectedTextChanged! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm3/w;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextDrawHelperImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lm3/w;->g0:Lj3/d$a;

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lm3/w;->g:Ljava/lang/String;

    invoke-interface {v0, p0}, Lj3/d$a;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private T(Ll3/a;F)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawDefaultSelectedPaint ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextDrawHelperImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ll3/a;->f()Ljava/util/List;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1, p2}, Lm3/w;->a0(Ljava/util/List;F)I

    move-result p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "drawDefaultSelectedPaint largestMarIndex = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p2, Lm3/k;

    invoke-direct {p2, p1}, Lm3/k;-><init>(I)V

    .line 7
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object p1, Lm3/u;->a:Lm3/u;

    .line 8
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method private T0(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm3/w;->y:Lm3/w$b;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lm3/w$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm3/w$b;-><init>(Lm3/w;Lm3/v;)V

    iput-object v0, p0, Lm3/w;->y:Lm3/w$b;

    :cond_0
    const-string v0, "VisionTextDrawHelperImpl"

    const-string v1, "postCheckForMultiTouch"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lm3/w;->x:Landroid/os/Handler;

    iget-object p0, p0, Lm3/w;->y:Lm3/w$b;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private U(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object v2, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lb3/b;->b:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 4
    iget-object v2, p0, Lm3/w;->e:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 5
    iget-object v2, p0, Lm3/w;->L:Landroid/graphics/Path;

    iget-object v3, p0, Lm3/w;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 6
    iget-object v2, p0, Lm3/w;->e:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 7
    iget-object v2, p0, Lm3/w;->L:Landroid/graphics/Path;

    iget-object p0, p0, Lm3/w;->e:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 p0, 0x0

    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, p0, p0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 9
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private U0()V
    .locals 6

    const-string v0, "VisionTextDrawHelperImpl"

    const-string v1, "============== WordInfo in VisionTextDrawHelper DB ==============="

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v1, p0, Lm3/w;->W:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object p0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm3/w$f;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " word index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lm3/w$f;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " line index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lm3/w$f;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " entity index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lm3/w$f;->c:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", enabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lm3/w$f;->g:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", selected : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lm3/w$f;->f:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " poly: [0]("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lm3/w$f;->e:[Landroid/graphics/Point;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lm3/w$f;->e:[Landroid/graphics/Point;

    aget-object v4, v5, v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") [1]("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lm3/w$f;->e:[Landroid/graphics/Point;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lm3/w$f;->e:[Landroid/graphics/Point;

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") [2]("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lm3/w$f;->e:[Landroid/graphics/Point;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lm3/w$f;->e:[Landroid/graphics/Point;

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") [3]("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lm3/w$f;->e:[Landroid/graphics/Point;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lm3/w$f;->e:[Landroid/graphics/Point;

    aget-object v3, v3, v5

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") rect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lm3/w$f;->i:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", text : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v1}, Lm3/w$f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private V(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lm3/w;->Z:Lm3/w$e;

    invoke-virtual {v0}, Lm3/w$e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lm3/w;->a0:Lm3/w$e;

    invoke-virtual {v0}, Lm3/w$e;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lm3/w;->Z:Lm3/w$e;

    invoke-virtual {v0, p1}, Lm3/w$e;->c(Landroid/graphics/Canvas;)V

    .line 3
    iget-object p0, p0, Lm3/w;->a0:Lm3/w$e;

    invoke-virtual {p0, p1}, Lm3/w$e;->c(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private V0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm3/w;->y:Lm3/w$b;

    if-eqz v0, :cond_0

    const-string v0, "VisionTextDrawHelperImpl"

    const-string v1, "removePendingClearMultiTouch"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lm3/w;->x:Landroid/os/Handler;

    iget-object p0, p0, Lm3/w;->y:Lm3/w$b;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private W(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lm3/w;->H:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lm3/w;->I:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p0, p0, Lm3/w;->V:Ljava/util/List;

    new-instance v0, Lm3/m;

    invoke-direct {v0, p1, p2}, Lm3/m;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lm3/w;->V:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 5
    iget-object v2, p0, Lm3/w;->V:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm3/w$g;

    .line 6
    iget-object v3, p0, Lm3/w;->I:Ljava/lang/String;

    iget-object v4, v2, Lm3/w$g;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-virtual {v2, p1, p2}, Lm3/w$g;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object p0, p0, Lm3/w;->V:Ljava/util/List;

    new-instance v0, Lm3/n;

    invoke-direct {v0, p1, p2}, Lm3/n;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private X()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm3/w;->d0()Lm3/w$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lm3/w;->Z:Lm3/w$e;

    iget-object v0, v0, Lm3/w$f;->e:[Landroid/graphics/Point;

    invoke-virtual {v1, v0}, Lm3/w$e;->h([Landroid/graphics/Point;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lm3/w;->Z()Lm3/w$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lm3/w;->a0:Lm3/w$e;

    iget-object v0, v0, Lm3/w$f;->e:[Landroid/graphics/Point;

    invoke-virtual {p0, v0}, Lm3/w$e;->h([Landroid/graphics/Point;)V

    :cond_1
    return-void
.end method

.method private X0(FII)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lm3/w;->p0()Ll3/a;

    move-result-object v0

    iput-object v0, p0, Lm3/w;->f:Ll3/a;

    .line 2
    iget-boolean v1, p0, Lm3/w;->l:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lm3/w;->e1(FII)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lm3/w;->l:Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lm3/w;->O(Ll3/a;FII)V

    :goto_0
    return-void
.end method

.method private Y0(II)Z
    .locals 8

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 2
    invoke-direct {p0, v0}, Lm3/w;->e0(Landroid/graphics/Point;)I

    move-result p1

    iput p1, p0, Lm3/w;->c0:I

    .line 3
    iget-object p2, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_3

    .line 4
    iget-object v4, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm3/w$f;

    iget v4, v4, Lm3/w$f;->c:I

    if-eq v4, v2, :cond_2

    move v3, p1

    :goto_0
    if-lez v3, :cond_0

    .line 5
    iget-object v5, p0, Lm3/w;->W:Ljava/util/List;

    add-int/lit8 v6, v3, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm3/w$f;

    iget v5, v5, Lm3/w$f;->c:I

    if-ne v5, v4, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    move v5, p1

    :goto_1
    if-ge v5, p2, :cond_1

    .line 6
    iget-object v6, p0, Lm3/w;->W:Ljava/util/List;

    add-int/lit8 v7, v5, 0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm3/w$f;

    iget v6, v6, Lm3/w$f;->c:I

    if-ne v6, v4, :cond_1

    move v5, v7

    goto :goto_1

    .line 7
    :cond_1
    iget-object p2, p0, Lm3/w;->f:Ll3/a;

    invoke-virtual {p2}, Ll3/a;->d()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ll3/a$e;

    invoke-virtual {p2}, Ll3/a$e;->f()Ljava/lang/String;

    move-result-object p2

    move v4, v0

    goto :goto_2

    :cond_2
    move v5, p1

    move v4, v1

    move-object p2, v3

    move v3, v5

    .line 8
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setNewSelectWord wordIndex : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", start : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", end : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "VisionTextDrawHelperImpl"

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-direct {p0, p1}, Lm3/w;->d1(I)V

    .line 10
    iget-object v6, p0, Lm3/w;->Z:Lm3/w$e;

    iget-object v7, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm3/w$f;

    iget-object v7, v7, Lm3/w$f;->e:[Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Lm3/w$e;->h([Landroid/graphics/Point;)V

    .line 11
    iget-object v6, p0, Lm3/w;->a0:Lm3/w$e;

    iget-object v7, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm3/w$f;

    iget-object v7, v7, Lm3/w$f;->e:[Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Lm3/w$e;->h([Landroid/graphics/Point;)V

    add-int/2addr v5, v0

    .line 12
    invoke-virtual {p0, v3, v5, v0}, Lm3/w;->c1(IIZ)V

    move-object v3, p2

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    if-eqz v4, :cond_4

    .line 13
    invoke-direct {p0, v3}, Lm3/w;->Z0(Ljava/lang/String;)V

    .line 14
    :cond_4
    invoke-direct {p0}, Lm3/w;->z0()V

    if-eq p1, v2, :cond_5

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_4
    return v0
.end method

.method private Z()Lm3/w$f;
    .locals 3

    .line 1
    iget-object v0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm3/w$f;

    .line 3
    invoke-virtual {v1}, Lm3/w$f;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private Z0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lm3/w;->g:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 3
    iget v2, p0, Lm3/w;->T:I

    if-ne v1, v2, :cond_0

    .line 4
    iput-object p1, p0, Lm3/w;->g:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iput-object v0, p0, Lm3/w;->g:Ljava/lang/String;

    .line 6
    iput v1, p0, Lm3/w;->T:I

    .line 7
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setReselectedTextData, old : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", new : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm3/w;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VisionTextDrawHelperImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    :cond_1
    invoke-direct {p0}, Lm3/w;->S0()V

    :cond_2
    return-void
.end method

.method private a0(Ljava/util/List;F)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll3/a$f;",
            ">;F)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll3/a$f;

    invoke-virtual {v4}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object v4

    iget-object v5, p0, Lm3/w;->r:Landroid/graphics/Point;

    invoke-static {v4, p2, v5}, Lm3/w;->g0([Landroid/graphics/Point;FLandroid/graphics/Point;)Ljava/util/List;

    move-result-object v4

    new-array v5, v0, [Landroid/graphics/Point;

    .line 3
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/graphics/Point;

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll3/a$f;

    invoke-virtual {v4}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object v4

    aget-object v4, v4, v0

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lm3/w;->h0()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll3/a$f;

    invoke-virtual {v4}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lm3/w;->h0()I

    move-result v6

    if-le v4, v6, :cond_0

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll3/a$f;

    invoke-virtual {v4}, Ll3/a$f;->f()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll3/a$f;

    invoke-virtual {v6}, Ll3/a$f;->f()Ljava/util/List;

    move-result-object v6

    sub-int/2addr v4, v5

    const/4 v7, 0x2

    div-int/2addr v4, v7

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ll3/a$h;

    invoke-virtual {v4}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v4

    aget-object v4, v4, v5

    .line 8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll3/a$f;

    .line 9
    invoke-direct {p0, v4, v5}, Lm3/w;->k0(Landroid/graphics/Point;Ll3/a$f;)I

    move-result v4

    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll3/a$f;

    invoke-virtual {v5}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v5, v5, v6

    .line 11
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ll3/a$f;

    invoke-virtual {v6}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object v6

    aget-object v6, v6, v7

    .line 12
    invoke-direct {p0, v5, v6}, Lm3/w;->j0(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v5

    double-to-int v5, v5

    mul-int/2addr v4, v5

    if-le v4, v3, :cond_0

    move v2, v1

    move v3, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return v2
.end method

.method private b0(II)V
    .locals 2

    .line 1
    sget-object v0, Lm3/w$d;->a:Lm3/w$d;

    iput-object v0, p0, Lm3/w;->b0:Lm3/w$d;

    .line 2
    iget-object v0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lm3/w;->c0:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 4
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 5
    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 6
    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 7
    invoke-direct {p0, v0}, Lm3/w;->e0(Landroid/graphics/Point;)I

    move-result p1

    if-ne p1, v1, :cond_1

    .line 8
    invoke-direct {p0, v0}, Lm3/w;->c0(Landroid/graphics/Point;)I

    move-result p1

    :cond_1
    if-eq p1, v1, :cond_3

    .line 9
    iget p2, p0, Lm3/w;->c0:I

    if-le p1, p2, :cond_2

    .line 10
    sget-object p1, Lm3/w$d;->c:Lm3/w$d;

    iput-object p1, p0, Lm3/w;->b0:Lm3/w$d;

    goto :goto_0

    :cond_2
    if-ge p1, p2, :cond_3

    .line 11
    sget-object p1, Lm3/w$d;->b:Lm3/w$d;

    iput-object p1, p0, Lm3/w;->b0:Lm3/w$d;

    :cond_3
    :goto_0
    return-void
.end method

.method private b1(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showPopupMenuAt starhandlerect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " endhandlerect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mReselectedTextData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm3/w;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextDrawHelperImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-boolean v0, Lm3/w;->i0:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showPopupMenuAt visibleRect="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5
    :cond_0
    iget-object v3, p0, Lm3/w;->c:Lm3/f;

    iget-object v7, p0, Lm3/w;->g:Ljava/lang/String;

    iget-object v8, p0, Lm3/w;->h:Ljava/lang/String;

    iget-object v9, p0, Lm3/w;->i:Ljava/lang/String;

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v3 .. v9}, Lm3/f;->B(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c0(Landroid/graphics/Point;)I
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7fffffff

    move v2, v1

    move v1, v0

    .line 1
    :goto_0
    iget-object v3, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2
    invoke-direct {p0, p1, v0}, Lm3/w;->o0(Landroid/graphics/Point;I)I

    move-result v3

    if-ge v3, v2, :cond_0

    move v1, v0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private d0()Lm3/w$f;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm3/w$f;

    .line 3
    invoke-virtual {v1}, Lm3/w$f;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private d1(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm3/w;->W:Ljava/util/List;

    sget-object v1, Lm3/s;->a:Lm3/s;

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2
    iget-object p0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm3/w$f;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lm3/w$f;->g(Z)V

    return-void
.end method

.method private e0(Landroid/graphics/Point;)I
    .locals 9

    .line 1
    iget-object v0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2
    iget-object v3, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm3/w$f;

    iget-boolean v3, v3, Lm3/w$f;->g:Z

    if-eqz v3, :cond_0

    .line 3
    iget-object v3, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm3/w$f;

    iget-object v3, v3, Lm3/w$f;->e:[Landroid/graphics/Point;

    aget-object v3, v3, v1

    iget-object v4, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm3/w$f;

    iget-object v4, v4, Lm3/w$f;->e:[Landroid/graphics/Point;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lm3/w;->L(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    .line 4
    iget-object v4, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm3/w$f;

    iget-object v4, v4, Lm3/w$f;->e:[Landroid/graphics/Point;

    aget-object v4, v4, v1

    invoke-static {v4, p1}, Lm3/w;->L(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v4

    .line 5
    iget-object v6, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lm3/w$f;

    iget-object v6, v6, Lm3/w$f;->e:[Landroid/graphics/Point;

    aget-object v6, v6, v5

    iget-object v7, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm3/w$f;

    iget-object v7, v7, Lm3/w$f;->e:[Landroid/graphics/Point;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-static {v6, v7}, Lm3/w;->L(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    .line 6
    iget-object v7, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lm3/w$f;

    iget-object v7, v7, Lm3/w$f;->e:[Landroid/graphics/Point;

    aget-object v7, v7, v5

    invoke-static {v7, p1}, Lm3/w;->L(Landroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v7

    .line 7
    invoke-direct {p0, v3, v4}, Lm3/w;->S(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v4

    .line 8
    invoke-direct {p0, v3, v3}, Lm3/w;->S(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v3

    .line 9
    invoke-direct {p0, v6, v7}, Lm3/w;->S(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v7

    .line 10
    invoke-direct {p0, v6, v6}, Lm3/w;->S(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v6

    if-lez v4, :cond_0

    if-gt v4, v3, :cond_0

    if-lez v7, :cond_0

    if-gt v7, v6, :cond_0

    .line 11
    iget-object p0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm3/w$f;

    iget-object p0, p0, Lm3/w$f;->d:Ljava/lang/String;

    const-string p1, " "

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sub-int/2addr v0, v5

    if-eq v2, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v2, -0x1

    :cond_2
    :goto_1
    return v2
.end method

.method private e1(FII)V
    .locals 2

    .line 1
    iget-object v0, p0, Lm3/w;->f:Ll3/a;

    const-string v1, "VisionTextDrawHelperImpl"

    if-nez v0, :cond_0

    const-string/jumbo p0, "updateRectList_skip_result==null"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "updateRectList - E"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lm3/l;->a:Lm3/l;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lm3/j;->a:Lm3/j;

    .line 6
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 7
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    iget-object v1, p0, Lm3/w;->f:Ll3/a;

    invoke-direct {p0, v1, p1, p2, p3}, Lm3/w;->O(Ll3/a;FII)V

    .line 9
    iget-object p2, p0, Lm3/w;->f:Ll3/a;

    invoke-direct {p0, p2, p1}, Lm3/w;->T(Ll3/a;F)V

    .line 10
    iget-object p0, p0, Lm3/w;->W:Ljava/util/List;

    new-instance p1, Lm3/o;

    invoke-direct {p1, v0}, Lm3/o;-><init>(Ljava/util/List;)V

    invoke-interface {p0, p1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private f0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm3/w;->b0:Lm3/w$d;

    sget-object v1, Lm3/w$d;->b:Lm3/w$d;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lm3/w;->d0()Lm3/w$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lm3/w;->Z:Lm3/w$e;

    iget-object v0, v0, Lm3/w$f;->e:[Landroid/graphics/Point;

    invoke-virtual {v1, v0}, Lm3/w$e;->h([Landroid/graphics/Point;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lm3/w$d;->c:Lm3/w$d;

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0}, Lm3/w;->Z()Lm3/w$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Lm3/w;->a0:Lm3/w$e;

    iget-object v0, v0, Lm3/w$f;->e:[Landroid/graphics/Point;

    invoke-virtual {v1, v0}, Lm3/w$e;->h([Landroid/graphics/Point;)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 7
    :goto_0
    sget-object v0, Lm3/w$d;->a:Lm3/w$d;

    iput-object v0, p0, Lm3/w;->b0:Lm3/w$d;

    .line 8
    invoke-direct {p0}, Lm3/w;->z0()V

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {p0}, Lm3/w;->a1()V

    .line 10
    :cond_2
    iget-object p0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private f1(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "VisionTextDrawHelperImpl"

    const-string/jumbo p1, "updateSelectedRegionFromHandleEnd failed because selectableWordList is 0"

    .line 2
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4
    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 5
    iget-object p1, p0, Lm3/w;->a0:Lm3/w$e;

    iget-object p1, p1, Lm3/w$e;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 6
    invoke-direct {p0, v0}, Lm3/w;->e0(Landroid/graphics/Point;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 7
    invoke-direct {p0, v0}, Lm3/w;->c0(Landroid/graphics/Point;)I

    move-result p1

    .line 8
    :cond_1
    invoke-direct {p0}, Lm3/w;->d0()Lm3/w$f;

    move-result-object v0

    .line 9
    invoke-direct {p0}, Lm3/w;->Z()Lm3/w$f;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lm3/w;->a0:Lm3/w$e;

    iget-object v3, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm3/w$f;

    iget-object v3, v3, Lm3/w$f;->e:[Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Lm3/w$e;->h([Landroid/graphics/Point;)V

    if-eq p1, p2, :cond_3

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 11
    iget p2, v1, Lm3/w$f;->b:I

    if-eq p1, p2, :cond_3

    .line 12
    iget p2, v0, Lm3/w$f;->b:I

    if-ge p1, p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    .line 13
    iget-object v0, p0, Lm3/w;->Z:Lm3/w$e;

    iget-object v1, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm3/w$f;

    iget-object v1, v1, Lm3/w$f;->e:[Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lm3/w$e;->h([Landroid/graphics/Point;)V

    .line 14
    iget-object v0, p0, Lm3/w;->a0:Lm3/w$e;

    iget-object v1, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm3/w$f;

    iget-object v1, v1, Lm3/w$f;->e:[Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lm3/w$e;->h([Landroid/graphics/Point;)V

    .line 15
    sget-object v0, Lm3/w$d;->b:Lm3/w$d;

    iput-object v0, p0, Lm3/w;->b0:Lm3/w$d;

    goto :goto_0

    :cond_2
    move v4, p2

    move p2, p1

    move p1, v4

    :goto_0
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p0, v0, p1, v0}, Lm3/w;->c1(IIZ)V

    const/4 v1, 0x1

    add-int/2addr p2, v1

    .line 17
    invoke-virtual {p0, p1, p2, v1}, Lm3/w;->c1(IIZ)V

    .line 18
    iget-object p1, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p2, p1, v0}, Lm3/w;->c1(IIZ)V

    .line 19
    invoke-direct {p0}, Lm3/w;->z0()V

    .line 20
    invoke-virtual {p0}, Lm3/w;->u0()V

    :cond_3
    return-void
.end method

.method private static g0([Landroid/graphics/Point;FLandroid/graphics/Point;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/graphics/Point;",
            "F",
            "Landroid/graphics/Point;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lm3/i;

    invoke-direct {v0, p1, p2}, Lm3/i;-><init>(FLandroid/graphics/Point;)V

    .line 2
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 3
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private g1(II)V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2
    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 3
    iget-object p1, p0, Lm3/w;->a0:Lm3/w$e;

    iget-object p1, p1, Lm3/w$e;->e:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 4
    invoke-direct {p0, v0}, Lm3/w;->e0(Landroid/graphics/Point;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 5
    invoke-direct {p0, v0}, Lm3/w;->c0(Landroid/graphics/Point;)I

    move-result p1

    .line 6
    :cond_0
    invoke-direct {p0}, Lm3/w;->Z()Lm3/w$f;

    move-result-object v0

    .line 7
    invoke-direct {p0}, Lm3/w;->d0()Lm3/w$f;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lm3/w;->Z:Lm3/w$e;

    iget-object v3, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm3/w$f;

    iget-object v3, v3, Lm3/w$f;->e:[Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Lm3/w$e;->h([Landroid/graphics/Point;)V

    if-eq p1, p2, :cond_2

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 9
    iget p2, v1, Lm3/w$f;->b:I

    if-eq p1, p2, :cond_2

    .line 10
    iget p2, v0, Lm3/w$f;->b:I

    if-le p1, p2, :cond_1

    add-int/lit8 p2, p2, 0x1

    .line 11
    iget-object v0, p0, Lm3/w;->Z:Lm3/w$e;

    iget-object v1, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm3/w$f;

    iget-object v1, v1, Lm3/w$f;->e:[Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lm3/w$e;->h([Landroid/graphics/Point;)V

    .line 12
    iget-object v0, p0, Lm3/w;->a0:Lm3/w$e;

    iget-object v1, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm3/w$f;

    iget-object v1, v1, Lm3/w$f;->e:[Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lm3/w$e;->h([Landroid/graphics/Point;)V

    .line 13
    sget-object v0, Lm3/w$d;->c:Lm3/w$d;

    iput-object v0, p0, Lm3/w;->b0:Lm3/w$d;

    move v4, p2

    move p2, p1

    move p1, v4

    :cond_1
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0, p1, v0}, Lm3/w;->c1(IIZ)V

    const/4 v1, 0x1

    add-int/2addr p2, v1

    .line 15
    invoke-virtual {p0, p1, p2, v1}, Lm3/w;->c1(IIZ)V

    .line 16
    iget-object p1, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {p0, p2, p1, v0}, Lm3/w;->c1(IIZ)V

    .line 17
    invoke-direct {p0}, Lm3/w;->z0()V

    .line 18
    invoke-virtual {p0}, Lm3/w;->u0()V

    :cond_2
    return-void
.end method

.method private h0()I
    .locals 3

    .line 1
    iget-object p0, p0, Lm3/w;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10102eb

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    .line 3
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return v0
.end method

.method private h1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lm3/w;->N:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, -0x13

    const-string v2, "Vibration thread"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lm3/w;->O:Landroid/os/Handler;

    .line 5
    iget-object v0, p0, Lm3/w;->a:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lm3/w;->N:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method

.method private j0(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 4

    iget p0, p2, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget p0, p2, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-double p0, p0

    invoke-static {p0, p1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    add-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic k(Lm3/w;Lm3/w$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lm3/w;->N0(Lm3/w$c;)V

    return-void
.end method

.method private k0(Landroid/graphics/Point;Ll3/a$f;)I
    .locals 4

    .line 1
    invoke-virtual {p2}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object p0

    const/4 v0, 0x3

    aget-object p0, p0, v0

    .line 2
    invoke-virtual {p2}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object p2

    const/4 v0, 0x2

    aget-object p2, p2, v0

    .line 3
    iget v0, p0, Landroid/graphics/Point;->y:I

    iget v1, p2, Landroid/graphics/Point;->y:I

    sub-int v2, v0, v1

    int-to-float v2, v2

    .line 4
    iget p2, p2, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->x:I

    sub-int v3, p2, p0

    int-to-float v3, v3

    mul-int/2addr p0, v1

    mul-int/2addr p2, v0

    sub-int/2addr p0, p2

    int-to-float p0, p0

    .line 5
    iget p2, p1, Landroid/graphics/Point;->x:I

    int-to-float p2, p2

    mul-float/2addr p2, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    mul-float/2addr p1, v3

    add-float/2addr p2, p1

    add-float/2addr p2, p0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double p1, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    div-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static synthetic l(Lm3/w$f;)V
    .locals 0

    invoke-static {p0}, Lm3/w;->P0(Lm3/w$f;)V

    return-void
.end method

.method private l0()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getImageInfo bitmap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm3/w;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextDrawHelperImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lm3/w;->m:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 4
    iget-object v2, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 5
    iget-object v3, p0, Lm3/w;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lm3/w;->n:I

    .line 6
    iget-object v3, p0, Lm3/w;->m:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lm3/w;->o:I

    .line 7
    iget-object v3, p0, Lm3/w;->b:Landroid/view/View;

    iget-object v4, p0, Lm3/w;->s:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 8
    iget-boolean v3, p0, Lm3/w;->v:Z

    if-eqz v3, :cond_0

    int-to-float v3, v0

    .line 9
    iget v4, p0, Lm3/w;->n:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v2

    iget v5, p0, Lm3/w;->o:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lm3/w;->p:F

    goto :goto_0

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 10
    iput v3, p0, Lm3/w;->p:F

    .line 11
    :goto_0
    iget-object v3, p0, Lm3/w;->r:Landroid/graphics/Point;

    iget-object v4, p0, Lm3/w;->q:Landroid/graphics/RectF;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iput v5, v3, Landroid/graphics/Point;->x:I

    .line 12
    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mImageWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lm3/w;->n:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mImageHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lm3/w;->o:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " rawWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rawHeight="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mImageRatio="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lm3/w;->p:F

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " mCenterOffset="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lm3/w;->r:Landroid/graphics/Point;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " mImageRect="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lm3/w;->q:Landroid/graphics/RectF;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " view rect="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lm3/w;->s:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lm3/w;->Z:Lm3/w$e;

    iget v1, p0, Lm3/w;->p:F

    iget v2, p0, Lm3/w;->n:I

    iget v3, p0, Lm3/w;->o:I

    iget-object v4, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3, v4}, Lm3/w$e;->g(FIILandroid/view/View;)V

    .line 15
    iget-object v0, p0, Lm3/w;->a0:Lm3/w$e;

    iget v1, p0, Lm3/w;->p:F

    iget v2, p0, Lm3/w;->n:I

    iget v3, p0, Lm3/w;->o:I

    iget-object p0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v0, v1, v2, v3, p0}, Lm3/w$e;->g(FIILandroid/view/View;)V

    :cond_1
    return-void
.end method

.method public static synthetic m(Landroid/graphics/Canvas;Lm3/w$f;)V
    .locals 0

    invoke-static {p0, p1}, Lm3/w;->H0(Landroid/graphics/Canvas;Lm3/w$f;)V

    return-void
.end method

.method public static synthetic n(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lm3/w$g;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lm3/w;->I0(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lm3/w$g;)V

    return-void
.end method

.method public static synthetic o(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lm3/w$g;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lm3/w;->J0(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lm3/w$g;)V

    return-void
.end method

.method private o0(Landroid/graphics/Point;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm3/w$f;

    iget-boolean v0, v0, Lm3/w$f;->g:Z

    const v1, 0x7fffffff

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 2
    iget-object v2, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm3/w$f;

    iget-object v2, v2, Lm3/w$f;->e:[Landroid/graphics/Point;

    aget-object v2, v2, v0

    invoke-direct {p0, p1, v2}, Lm3/w;->j0(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v2

    double-to-int v2, v2

    if-ge v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static synthetic p(ILm3/w$f;)Z
    .locals 0

    invoke-static {p0, p1}, Lm3/w;->F0(ILm3/w$f;)Z

    move-result p0

    return p0
.end method

.method public static synthetic q(Lm3/w;[Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0, p1}, Lm3/w;->M0([Landroid/graphics/Point;)V

    return-void
.end method

.method public static synthetic r(Lm3/w$f;)V
    .locals 0

    invoke-static {p0}, Lm3/w;->O0(Lm3/w$f;)V

    return-void
.end method

.method private static r0([Landroid/graphics/Point;[Landroid/graphics/Point;II)[Landroid/graphics/Point;
    .locals 5

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Point;

    const/4 v1, 0x0

    .line 1
    aget-object v2, p0, v1

    aput-object v2, v0, v1

    const/4 v2, 0x1

    .line 2
    aget-object v3, p1, v2

    aput-object v3, v0, v2

    const/4 v3, 0x2

    .line 3
    aget-object p1, p1, v3

    aput-object p1, v0, v3

    const/4 p1, 0x3

    .line 4
    aget-object p0, p0, p1

    aput-object p0, v0, p1

    aget-object p0, v0, v1

    .line 5
    iget p0, p0, Landroid/graphics/Point;->x:I

    aget-object v4, v0, v2

    iget v4, v4, Landroid/graphics/Point;->x:I

    if-ge p0, v4, :cond_1

    aget-object p0, v0, v1

    .line 6
    iget v4, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, p2

    iput v4, p0, Landroid/graphics/Point;->x:I

    aget-object p0, v0, v2

    .line 7
    iget v4, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v4, p2

    iput v4, p0, Landroid/graphics/Point;->x:I

    aget-object p0, v0, v3

    .line 8
    iget v4, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v4, p2

    iput v4, p0, Landroid/graphics/Point;->x:I

    aget-object p0, v0, p1

    .line 9
    iget v4, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, p2

    iput v4, p0, Landroid/graphics/Point;->x:I

    goto :goto_0

    :cond_1
    aget-object p0, v0, v1

    .line 10
    iget v4, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v4, p2

    iput v4, p0, Landroid/graphics/Point;->x:I

    aget-object p0, v0, v2

    .line 11
    iget v4, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, p2

    iput v4, p0, Landroid/graphics/Point;->x:I

    aget-object p0, v0, v3

    .line 12
    iget v4, p0, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, p2

    iput v4, p0, Landroid/graphics/Point;->x:I

    aget-object p0, v0, p1

    .line 13
    iget v4, p0, Landroid/graphics/Point;->x:I

    add-int/2addr v4, p2

    iput v4, p0, Landroid/graphics/Point;->x:I

    :goto_0
    aget-object p0, v0, v1

    .line 14
    iget p2, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p3

    iput p2, p0, Landroid/graphics/Point;->y:I

    aget-object p0, v0, v2

    .line 15
    iget p2, p0, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p3

    iput p2, p0, Landroid/graphics/Point;->y:I

    aget-object p0, v0, v3

    .line 16
    iget p2, p0, Landroid/graphics/Point;->y:I

    add-int/2addr p2, p3

    iput p2, p0, Landroid/graphics/Point;->y:I

    aget-object p0, v0, p1

    .line 17
    iget p1, p0, Landroid/graphics/Point;->y:I

    add-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Point;->y:I

    return-object v0

    .line 18
    :cond_2
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Bounding poly cannot be found, because startPoly="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " endPoly="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VisionTextDrawHelperImpl"

    .line 20
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic s(Ljava/util/List;Lm3/w$f;)V
    .locals 0

    invoke-static {p0, p1}, Lm3/w;->Q0(Ljava/util/List;Lm3/w$f;)V

    return-void
.end method

.method public static synthetic t(FLandroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    invoke-static {p0, p1, p2}, Lm3/w;->K0(FLandroid/graphics/Point;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic u(Lm3/w$f;)V
    .locals 0

    invoke-static {p0}, Lm3/w;->G0(Lm3/w$f;)V

    return-void
.end method

.method public static synthetic v(Lm3/w;Lm3/w$c;)V
    .locals 0

    invoke-direct {p0, p1}, Lm3/w;->L0(Lm3/w$c;)V

    return-void
.end method

.method private v0()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lm3/w;->d:Z

    const-string v1, "VisionTextDrawHelperImpl"

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/init"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object v0, p0, Lm3/w;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 4
    iget-object v0, p0, Lm3/w;->b:Landroid/view/View;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lm3/w;->Z:Lm3/w$e;

    iget-object v3, p0, Lm3/w;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, p0}, Lm3/w$e;->d(Landroid/content/Context;Lm3/w;)V

    .line 7
    iget-object v2, p0, Lm3/w;->a0:Lm3/w$e;

    iget-object v3, p0, Lm3/w;->a:Landroid/content/Context;

    invoke-virtual {v2, v3, p0}, Lm3/w$e;->d(Landroid/content/Context;Lm3/w;)V

    .line 8
    iget-object v2, p0, Lm3/w;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object v2, p0, Lm3/w;->e:Landroid/graphics/Paint;

    sget v3, Lb3/b;->a:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object v2, p0, Lm3/w;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 11
    iget-object v2, p0, Lm3/w;->e:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 12
    iget-object v2, p0, Lm3/w;->e:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/CornerPathEffect;

    sget v4, Lb3/c;->a:I

    .line 13
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v3, v4}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 14
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 15
    iget-object v2, p0, Lm3/w;->e:Landroid/graphics/Paint;

    sget v3, Lb3/c;->b:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget-object v2, p0, Lm3/w;->e:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    iput-boolean v1, p0, Lm3/w;->d:Z

    .line 18
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lm3/w;->x:Landroid/os/Handler;

    .line 19
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lm3/w;->w:Landroid/graphics/Paint;

    .line 20
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 21
    iget-object v1, p0, Lm3/w;->w:Landroid/graphics/Paint;

    sget v2, Lb3/b;->c:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object v1, p0, Lm3/w;->w:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    iget-object v1, p0, Lm3/w;->w:Landroid/graphics/Paint;

    sget v2, Lb3/c;->c:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    iget-object v0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lm3/w;->T:I

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "/init_skip"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic w()Ljava/lang/String;
    .locals 1

    sget-object v0, Lm3/w;->k0:Ljava/lang/String;

    return-object v0
.end method

.method private w0(FF)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initTextSelection x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " y="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " mSelectionStarted="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lm3/w;->t:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VisionTextDrawHelperImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lm3/w;->l0()V

    .line 3
    iget-boolean p1, p0, Lm3/w;->t:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lm3/w;->t:Z

    .line 5
    iget p1, p0, Lm3/w;->p:F

    iget p2, p0, Lm3/w;->n:I

    iget v0, p0, Lm3/w;->o:I

    invoke-direct {p0, p1, p2, v0}, Lm3/w;->X0(FII)V

    .line 6
    invoke-direct {p0}, Lm3/w;->X()V

    .line 7
    sget-boolean p1, Lm3/w;->h0:Z

    if-eqz p1, :cond_0

    .line 8
    invoke-direct {p0}, Lm3/w;->U0()V

    :cond_0
    return-void
.end method

.method static synthetic x(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lm3/w;->k0:Ljava/lang/String;

    return-object p0
.end method

.method private x0()V
    .locals 9

    const-string v0, "VisionTextDrawHelperImpl"

    const-string v1, "invalidateDimLinePath()"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lm3/w;->L:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 3
    iget-boolean v0, p0, Lm3/w;->H:Z

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lm3/w;->I:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lm3/w;->U:Ljava/util/List;

    new-instance v1, Lm3/p;

    invoke-direct {v1, p0}, Lm3/p;-><init>(Lm3/w;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 7
    :cond_0
    iget-object v0, p0, Lm3/w;->U:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    .line 8
    iget-object v3, p0, Lm3/w;->U:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm3/w$c;

    .line 9
    iget-object v4, p0, Lm3/w;->I:Ljava/lang/String;

    iget-object v5, v3, Lm3/w$c;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 11
    iget-object v5, v3, Lm3/w$c;->c:[Landroid/graphics/Point;

    aget-object v6, v5, v1

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    aget-object v5, v5, v1

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v4, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 12
    iget-object v5, v3, Lm3/w$c;->c:[Landroid/graphics/Point;

    array-length v5, v5

    const/4 v6, 0x1

    :goto_1
    if-ge v6, v5, :cond_1

    .line 13
    iget-object v7, v3, Lm3/w$c;->c:[Landroid/graphics/Point;

    aget-object v8, v7, v6

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    aget-object v7, v7, v6

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v4, v8, v7}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 15
    iget-object v3, p0, Lm3/w;->L:Landroid/graphics/Path;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_3
    iget-object v0, p0, Lm3/w;->U:Ljava/util/List;

    new-instance v1, Lm3/q;

    invoke-direct {v1, p0}, Lm3/q;-><init>(Lm3/w;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 17
    :cond_4
    iget-object v0, p0, Lm3/w;->X:Ljava/util/List;

    new-instance v1, Lm3/r;

    invoke-direct {v1, p0}, Lm3/r;-><init>(Lm3/w;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 18
    :cond_5
    :goto_2
    iget-object p0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static synthetic y(Lm3/w;)F
    .locals 0

    iget p0, p0, Lm3/w;->z:F

    return p0
.end method

.method private y0()V
    .locals 8

    .line 1
    iget-object v0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateSelectableWordList() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VisionTextDrawHelperImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_7

    .line 3
    iget-object v4, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lm3/w$f;

    .line 4
    iget-boolean v5, p0, Lm3/w;->H:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    .line 5
    iget-object v5, p0, Lm3/w;->I:Ljava/lang/String;

    const/4 v7, -0x1

    if-eqz v5, :cond_3

    .line 6
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    iget v5, v4, Lm3/w$f;->c:I

    if-eq v5, v7, :cond_0

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    invoke-virtual {v4, v6}, Lm3/w$f;->f(Z)V

    goto :goto_3

    .line 8
    :cond_1
    iget v5, v4, Lm3/w$f;->c:I

    if-eq v5, v7, :cond_2

    .line 9
    iget-object v5, p0, Lm3/w;->f:Ll3/a;

    invoke-virtual {v5}, Ll3/a;->d()Ljava/util/List;

    move-result-object v5

    iget v6, v4, Lm3/w$f;->c:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll3/a$e;

    invoke-virtual {v5}, Ll3/a$e;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 10
    iget-object v6, p0, Lm3/w;->I:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    invoke-virtual {v4, v5}, Lm3/w$f;->f(Z)V

    goto :goto_3

    .line 11
    :cond_2
    invoke-virtual {v4, v1}, Lm3/w$f;->f(Z)V

    goto :goto_3

    .line 12
    :cond_3
    iget v5, v4, Lm3/w$f;->c:I

    if-eq v5, v7, :cond_4

    goto :goto_2

    :cond_4
    move v6, v1

    :goto_2
    invoke-virtual {v4, v6}, Lm3/w$f;->f(Z)V

    goto :goto_3

    .line 13
    :cond_5
    invoke-virtual {v4, v6}, Lm3/w$f;->f(Z)V

    .line 14
    :goto_3
    sget-boolean v5, Lm3/w;->i0:Z

    if-eqz v5, :cond_6

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "word "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " isEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v4, Lm3/w$f;->g:Z

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_7
    invoke-virtual {p0}, Lm3/w;->j()V

    return-void
.end method

.method static synthetic z(Landroid/graphics/Point;)Landroid/graphics/PointF;
    .locals 0

    invoke-static {p0}, Lm3/w;->K(Landroid/graphics/Point;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private z0()V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lm3/w;->g:Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "VisionTextDrawHelperImpl"

    if-lez v2, :cond_5

    .line 4
    iget-object v2, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v8, v3

    move v6, v4

    move v7, v6

    move v9, v7

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lm3/w$f;

    .line 5
    invoke-virtual {v10}, Lm3/w$f;->e()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 6
    iget-object v7, p0, Lm3/w;->Y:Ljava/util/Map;

    iget v11, v10, Lm3/w$f;->b:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll3/a$h;

    const-string v11, " "

    if-eqz v7, :cond_3

    if-eqz v8, :cond_1

    .line 7
    iget v9, v10, Lm3/w$f;->a:I

    .line 8
    iget v6, v10, Lm3/w$f;->b:I

    move v8, v4

    goto :goto_1

    .line 9
    :cond_1
    iget v7, v10, Lm3/w$f;->a:I

    if-eq v9, v7, :cond_2

    const-string v9, "\n"

    .line 10
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v9, v7

    .line 11
    :cond_2
    :goto_1
    invoke-virtual {v10}, Lm3/w$f;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    :goto_2
    iget v7, v10, Lm3/w$f;->b:I

    .line 14
    sget-boolean v10, Lm3/w;->i0:Z

    if-eqz v10, :cond_0

    .line 15
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalidateSelectedText : startWordIndex = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lm3/w;->W:Ljava/util/List;

    .line 16
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lm3/w$f;

    invoke-virtual {v12}, Lm3/w$f;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 17
    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "invalidateSelectedText : endWordIndex = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lm3/w;->W:Ljava/util/List;

    .line 19
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lm3/w$f;

    invoke-virtual {v11}, Lm3/w$f;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 20
    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    move v4, v6

    goto :goto_3

    :cond_5
    move v7, v4

    .line 21
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm3/w;->g:Ljava/lang/String;

    .line 22
    invoke-direct {p0, v4, v3}, Lm3/w;->R0(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm3/w;->h:Ljava/lang/String;

    const/4 v0, 0x2

    .line 23
    invoke-direct {p0, v7, v0}, Lm3/w;->R0(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm3/w;->i:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateSelectedText : selected text = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm3/w;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    sget-boolean v0, Lm3/w;->i0:Z

    if-eqz v0, :cond_6

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateSelectedText : Left adjacent text = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm3/w;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateSelectedText : Right adjacent text = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm3/w;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidateSelectedText, old : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", new : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lm3/w;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    .line 29
    iget-object v0, p0, Lm3/w;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 30
    :cond_7
    invoke-direct {p0}, Lm3/w;->S0()V

    :cond_8
    return-void
.end method


# virtual methods
.method public A0()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm3/w$f;

    .line 2
    iget-boolean v1, v0, Lm3/w$f;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lm3/w$f;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public D0()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm3/w$f;

    .line 2
    iget-boolean v1, v0, Lm3/w$f;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lm3/w$f;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public P()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm3/w;->D:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lm3/w;->c:Lm3/f;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lm3/f;->E()V

    :cond_0
    return-void
.end method

.method public W0()V
    .locals 4

    const-string v0, "VisionTextDrawHelperImpl"

    const-string v1, "select all text"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lm3/w;->j()V

    .line 4
    iget-object v0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lm3/t;->a:Lm3/t;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 6
    invoke-direct {p0}, Lm3/w;->d0()Lm3/w$f;

    move-result-object v0

    .line 7
    invoke-direct {p0}, Lm3/w;->Z()Lm3/w$f;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 8
    iget v0, v0, Lm3/w$f;->b:I

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 9
    iget v2, v1, Lm3/w$f;->b:I

    .line 10
    :cond_1
    iget-object v1, p0, Lm3/w;->Z:Lm3/w$e;

    iget-object v3, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm3/w$f;

    iget-object v0, v0, Lm3/w$f;->e:[Landroid/graphics/Point;

    invoke-virtual {v1, v0}, Lm3/w$e;->h([Landroid/graphics/Point;)V

    .line 11
    iget-object v0, p0, Lm3/w;->a0:Lm3/w$e;

    iget-object v1, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm3/w$f;

    iget-object v1, v1, Lm3/w$f;->e:[Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Lm3/w$e;->h([Landroid/graphics/Point;)V

    .line 12
    invoke-direct {p0}, Lm3/w;->z0()V

    .line 13
    invoke-virtual {p0}, Lm3/w;->a1()V

    .line 14
    iget-object p0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_2
    return-void
.end method

.method Y()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lm3/w;->q0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    sget-boolean v0, Lm3/w;->i0:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawSelection mScaleFactor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm3/w;->z:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " selectableWordList size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm3/w;->W:Ljava/util/List;

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextDrawHelperImpl"

    .line 4
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 7
    iget-boolean v0, p0, Lm3/w;->u:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-direct {p0, p1}, Lm3/w;->U(Landroid/graphics/Canvas;)V

    .line 9
    :cond_1
    iget-boolean v0, p0, Lm3/w;->E:Z

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lm3/w;->w:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v0}, Lm3/w;->W(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 11
    :cond_2
    iget-object v0, p0, Lm3/w;->W:Ljava/util/List;

    new-instance v1, Lm3/h;

    invoke-direct {v1, p1}, Lm3/h;-><init>(Landroid/graphics/Canvas;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 12
    invoke-direct {p0, p1}, Lm3/w;->V(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public a1()V
    .locals 14

    .line 1
    iget-boolean v0, p0, Lm3/w;->D:Z

    const-string v1, "VisionTextDrawHelperImpl"

    if-eqz v0, :cond_7

    iget v0, p0, Lm3/w;->A:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7

    iget-object v0, p0, Lm3/w;->b:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p0}, Lm3/w;->D0()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    iget-object v3, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v3, 0x0

    aget v4, v0, v3

    aget v0, v0, v2

    .line 4
    iget-object v2, p0, Lm3/w;->d0:Landroid/graphics/Rect;

    iget-object v5, p0, Lm3/w;->Z:Lm3/w$e;

    iget-object v5, v5, Lm3/w$e;->b:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, p0, Lm3/w;->z:F

    mul-float/2addr v6, v7

    int-to-float v8, v4

    add-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 5
    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    int-to-float v9, v0

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 6
    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 7
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 8
    iget-object v2, p0, Lm3/w;->e0:Landroid/graphics/Rect;

    iget-object v5, p0, Lm3/w;->a0:Lm3/w$e;

    iget-object v5, v5, Lm3/w$e;->b:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 9
    iget v6, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 10
    iget v6, v5, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    mul-float/2addr v6, v7

    add-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 11
    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    mul-float/2addr v5, v7

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    .line 12
    sget-boolean v2, Lm3/w;->i0:Z

    if-eqz v2, :cond_1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showPopupMenu: view location x="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " y="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " scale="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lm3/w;->z:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, "handleStart rect="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lm3/w;->d0:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " handleEnd rect="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lm3/w;->e0:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_1
    iget-object v2, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 15
    iget-object v2, p0, Lm3/w;->f0:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 16
    iget-object v2, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lm3/w$f;

    .line 17
    iget-boolean v6, v5, Lm3/w$f;->f:Z

    if-eqz v6, :cond_2

    move v6, v3

    .line 18
    :goto_1
    iget-object v7, v5, Lm3/w$f;->e:[Landroid/graphics/Point;

    array-length v10, v7

    if-ge v6, v10, :cond_2

    .line 19
    aget-object v10, v7, v6

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    iget v11, p0, Lm3/w;->z:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 20
    aget-object v7, v7, v6

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    mul-float/2addr v7, v11

    float-to-int v7, v7

    add-int v11, v10, v4

    .line 21
    iget-object v12, p0, Lm3/w;->s:Landroid/graphics/Rect;

    iget v13, v12, Landroid/graphics/Rect;->left:I

    if-lt v11, v13, :cond_3

    iget v13, v12, Landroid/graphics/Rect;->right:I

    if-gt v11, v13, :cond_3

    add-int v11, v7, v0

    iget v13, v12, Landroid/graphics/Rect;->top:I

    if-lt v11, v13, :cond_3

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    if-gt v11, v12, :cond_3

    .line 22
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 23
    iget-object v11, v5, Lm3/w$f;->i:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget v13, p0, Lm3/w;->z:F

    mul-float/2addr v12, v13

    add-float/2addr v12, v8

    float-to-int v12, v12

    iput v12, v6, Landroid/graphics/Rect;->left:I

    .line 24
    iget v12, v11, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    mul-float/2addr v12, v13

    add-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v6, Landroid/graphics/Rect;->top:I

    .line 25
    iget v12, v11, Landroid/graphics/Rect;->right:I

    int-to-float v12, v12

    mul-float/2addr v12, v13

    add-float/2addr v12, v8

    float-to-int v12, v12

    iput v12, v6, Landroid/graphics/Rect;->right:I

    .line 26
    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    mul-float/2addr v11, v13

    add-float/2addr v11, v9

    float-to-int v11, v11

    iput v11, v6, Landroid/graphics/Rect;->bottom:I

    .line 27
    iget-object v11, p0, Lm3/w;->f0:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    sget-boolean v11, Lm3/w;->i0:Z

    if-eqz v11, :cond_2

    .line 29
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "showPopupMenu "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lm3/w$f;->c()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " scaledX:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " scaledY:"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " selectableWord.rect:"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Lm3/w$f;->i:Landroid/graphics/Rect;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " visibleWordRect:"

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v0, "showPopupMenu error "

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_5
    iget-object v0, p0, Lm3/w;->f0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    invoke-virtual {p0}, Lm3/w;->P()V

    goto :goto_2

    .line 33
    :cond_6
    iget-object v0, p0, Lm3/w;->d0:Landroid/graphics/Rect;

    iget-object v1, p0, Lm3/w;->e0:Landroid/graphics/Rect;

    iget-object v2, p0, Lm3/w;->f0:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2}, Lm3/w;->b1(Landroid/graphics/Rect;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    :goto_2
    return-void

    .line 34
    :cond_7
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancel showing copy&paste popup mEnableShowPopup="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lm3/w;->D:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScaleState="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lm3/w;->A:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isTextSelected="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {p0}, Lm3/w;->D0()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mView="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Ll3/a;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iput-object v1, v0, Lm3/w;->f:Ll3/a;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 2
    iput-object v2, v0, Lm3/w;->j:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ll3/a;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lm3/w;->j:Ljava/lang/String;

    .line 4
    :goto_0
    sget-boolean v2, Lm3/w;->h0:Z

    if-eqz v2, :cond_5

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setOcrResult "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", LanguageTags : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lm3/w;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VisionTextDrawHelperImpl"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual/range {p1 .. p1}, Ll3/a;->c()Ljava/util/List;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    .line 7
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const-string v6, " "

    const-string v7, ") "

    const-string v8, " ("

    const/4 v9, 0x3

    const/4 v10, 0x2

    const-string v11, "), ("

    const/4 v12, 0x1

    const-string v13, ", "

    if-ge v4, v5, :cond_3

    .line 8
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ll3/a$a;

    .line 9
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "blockInfo"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v5}, Ll3/a$a;->d()[Landroid/graphics/Point;

    move-result-object v15

    aget-object v15, v15, v3

    iget v15, v15, Landroid/graphics/Point;->x:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ll3/a$a;->d()[Landroid/graphics/Point;

    move-result-object v15

    aget-object v15, v15, v3

    iget v15, v15, Landroid/graphics/Point;->y:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v5}, Ll3/a$a;->d()[Landroid/graphics/Point;

    move-result-object v15

    aget-object v15, v15, v12

    iget v15, v15, Landroid/graphics/Point;->x:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ll3/a$a;->d()[Landroid/graphics/Point;

    move-result-object v15

    aget-object v15, v15, v12

    iget v15, v15, Landroid/graphics/Point;->y:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v5}, Ll3/a$a;->d()[Landroid/graphics/Point;

    move-result-object v15

    aget-object v15, v15, v10

    iget v15, v15, Landroid/graphics/Point;->x:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ll3/a$a;->d()[Landroid/graphics/Point;

    move-result-object v15

    aget-object v15, v15, v10

    iget v15, v15, Landroid/graphics/Point;->y:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v5}, Ll3/a$a;->d()[Landroid/graphics/Point;

    move-result-object v15

    aget-object v15, v15, v9

    iget v15, v15, Landroid/graphics/Point;->x:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ll3/a$a;->d()[Landroid/graphics/Point;

    move-result-object v15

    aget-object v15, v15, v9

    iget v15, v15, Landroid/graphics/Point;->y:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v5}, Ll3/a$a;->e()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ll3/a$a;->f()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 15
    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {v5}, Ll3/a$a;->c()Ljava/util/List;

    move-result-object v5

    move v14, v3

    .line 17
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_2

    .line 18
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ll3/a$f;

    .line 19
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "    lineInfo"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v15}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object v10

    aget-object v10, v10, v3

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object v10

    aget-object v10, v10, v3

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v15}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object v10

    aget-object v10, v10, v12

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object v10

    aget-object v10, v10, v12

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v15}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object v10

    const/16 v16, 0x2

    aget-object v10, v10, v16

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object v10

    aget-object v10, v10, v16

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v15}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object v10

    const/16 v17, 0x3

    aget-object v10, v10, v17

    iget v10, v10, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ll3/a$f;->c()[Landroid/graphics/Point;

    move-result-object v10

    aget-object v10, v10, v17

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v15}, Ll3/a$f;->d()Landroid/graphics/Rect;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ll3/a$f;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 25
    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {v15}, Ll3/a$f;->f()Ljava/util/List;

    move-result-object v9

    move v10, v3

    .line 27
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-ge v10, v15, :cond_1

    .line 28
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ll3/a$h;

    .line 29
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "        wordInfo "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", entity "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ll3/a$h;->d()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v15}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v3

    const/16 v18, 0x0

    aget-object v3, v3, v18

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v3

    aget-object v3, v3, v18

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v15}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v3

    const/16 v17, 0x1

    aget-object v3, v3, v17

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v3

    aget-object v3, v3, v17

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v15}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v3

    const/16 v16, 0x2

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v3

    aget-object v3, v3, v16

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v15}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v3

    const/16 v19, 0x3

    aget-object v3, v3, v19

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ll3/a$h;->e()[Landroid/graphics/Point;

    move-result-object v3

    aget-object v3, v3, v19

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v15}, Ll3/a$h;->f()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ll3/a$h;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 36
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ll3/a;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 37
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll3/a$e;

    .line 39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "entityInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ll3/a$e;->c()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v3}, Ll3/a$e;->d()[Landroid/graphics/Point;

    move-result-object v5

    const/16 v18, 0x0

    aget-object v5, v5, v18

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ll3/a$e;->d()[Landroid/graphics/Point;

    move-result-object v5

    aget-object v5, v5, v18

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3}, Ll3/a$e;->d()[Landroid/graphics/Point;

    move-result-object v5

    const/4 v9, 0x1

    aget-object v5, v5, v9

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ll3/a$e;->d()[Landroid/graphics/Point;

    move-result-object v5

    aget-object v5, v5, v9

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v3}, Ll3/a$e;->d()[Landroid/graphics/Point;

    move-result-object v5

    const/4 v10, 0x2

    aget-object v5, v5, v10

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ll3/a$e;->d()[Landroid/graphics/Point;

    move-result-object v5

    aget-object v5, v5, v10

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v3}, Ll3/a$e;->d()[Landroid/graphics/Point;

    move-result-object v5

    const/4 v12, 0x3

    aget-object v5, v5, v12

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ll3/a$e;->d()[Landroid/graphics/Point;

    move-result-object v5

    aget-object v5, v5, v12

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v3}, Ll3/a$e;->e()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ll3/a$e;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ll3/a$e;->g()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {v3}, Ll3/a$e;->i()[Ll3/a$g;

    move-result-object v4

    array-length v4, v4

    move/from16 v5, v18

    :goto_5
    if-ge v5, v4, :cond_4

    .line 47
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    underline start : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v3}, Ll3/a$e;->i()[Ll3/a$g;

    move-result-object v15

    aget-object v15, v15, v5

    invoke-virtual {v15}, Ll3/a$g;->c()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v3}, Ll3/a$e;->i()[Ll3/a$g;

    move-result-object v15

    aget-object v15, v15, v5

    invoke-virtual {v15}, Ll3/a$g;->c()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v15, ", stop : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3}, Ll3/a$e;->i()[Ll3/a$g;

    move-result-object v15

    aget-object v15, v15, v5

    invoke-virtual {v15}, Ll3/a$g;->d()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->x:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v3}, Ll3/a$e;->i()[Ll3/a$g;

    move-result-object v15

    aget-object v15, v15, v5

    invoke-virtual {v15}, Ll3/a$g;->d()Landroid/graphics/PointF;

    move-result-object v15

    iget v15, v15, Landroid/graphics/PointF;->y:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 52
    invoke-static {v2, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_5
    return-void
.end method

.method public c()Z
    .locals 2

    const-string v0, "VisionTextDrawHelperImpl"

    const-string/jumbo v1, "startTextSelectionByButton"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1, v1}, Lm3/w;->w0(FF)V

    .line 3
    iget-object v1, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 4
    invoke-direct {p0}, Lm3/w;->d0()Lm3/w$f;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p0, "find a valid text"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method c1(IIZ)V
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v0, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm3/w$f;

    invoke-virtual {v0, p3}, Lm3/w$f;->g(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lm3/w;->G:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lm3/w;->t0(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    sget-boolean v2, Lm3/w;->i0:Z

    if-eqz v2, :cond_2

    .line 6
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTouchEvent "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " actionMasked="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " handleMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lm3/w;->b0:Lm3/w$d;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mOnScaleOrTranslation="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lm3/w;->C:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mScaleState="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lm3/w;->A:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "VisionTextDrawHelperImpl"

    .line 8
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_3

    .line 10
    iput v0, p0, Lm3/w;->J:I

    .line 11
    iput v1, p0, Lm3/w;->K:I

    .line 12
    iget-object v2, p0, Lm3/w;->c:Lm3/f;

    invoke-virtual {v2}, Lm3/f;->E()V

    .line 13
    iput-boolean v4, p0, Lm3/w;->C:Z

    goto :goto_2

    .line 14
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 15
    iget-boolean v2, p0, Lm3/w;->C:Z

    if-nez v2, :cond_8

    .line 16
    iget v2, p0, Lm3/w;->A:I

    if-eq v2, v5, :cond_5

    iget v2, p0, Lm3/w;->B:I

    if-ne v2, v5, :cond_4

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1

    :cond_5
    :goto_0
    move v2, v5

    :goto_1
    iput-boolean v2, p0, Lm3/w;->C:Z

    goto :goto_2

    .line 17
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v5, :cond_8

    .line 18
    iput v0, p0, Lm3/w;->J:I

    .line 19
    iput v1, p0, Lm3/w;->K:I

    .line 20
    iget-boolean v2, p0, Lm3/w;->k:Z

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lm3/w;->C:Z

    if-eqz v2, :cond_8

    .line 21
    :cond_7
    iput-boolean v4, p0, Lm3/w;->C:Z

    .line 22
    iput-boolean v4, p0, Lm3/w;->k:Z

    .line 23
    invoke-virtual {p0}, Lm3/w;->a1()V

    .line 24
    :cond_8
    :goto_2
    iget-object v2, p0, Lm3/w;->b0:Lm3/w$d;

    sget-object v6, Lm3/w$d;->a:Lm3/w$d;

    if-eq v2, v6, :cond_a

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v5, :cond_9

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v7, 0x3

    if-ne v2, v7, :cond_a

    .line 27
    :cond_9
    invoke-direct {p0}, Lm3/w;->f0()V

    return v5

    .line 28
    :cond_a
    iget-object v2, p0, Lm3/w;->b0:Lm3/w$d;

    if-ne v2, v6, :cond_c

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_c

    .line 30
    iget-object v2, p0, Lm3/w;->Z:Lm3/w$e;

    invoke-virtual {v2, v0, v1}, Lm3/w$e;->b(II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 31
    sget-object p1, Lm3/w$d;->b:Lm3/w$d;

    iput-object p1, p0, Lm3/w;->b0:Lm3/w$d;

    return v5

    .line 32
    :cond_b
    iget-object v2, p0, Lm3/w;->a0:Lm3/w$e;

    invoke-virtual {v2, v0, v1}, Lm3/w$e;->b(II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 33
    sget-object p1, Lm3/w$d;->c:Lm3/w$d;

    iput-object p1, p0, Lm3/w;->b0:Lm3/w$d;

    return v5

    .line 34
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v3, :cond_11

    .line 35
    iget-object p1, p0, Lm3/w;->b0:Lm3/w$d;

    sget-object v2, Lm3/w$d;->b:Lm3/w$d;

    if-ne p1, v2, :cond_e

    .line 36
    iget-object p1, p0, Lm3/w;->Z:Lm3/w$e;

    invoke-virtual {p1, v0, v1}, Lm3/w$e;->b(II)Z

    move-result p1

    if-nez p1, :cond_d

    .line 37
    invoke-direct {p0, v0, v1}, Lm3/w;->g1(II)V

    .line 38
    :cond_d
    iget-object p0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v5

    .line 39
    :cond_e
    sget-object v2, Lm3/w$d;->c:Lm3/w$d;

    if-ne p1, v2, :cond_10

    .line 40
    iget-object p1, p0, Lm3/w;->a0:Lm3/w$e;

    invoke-virtual {p1, v0, v1}, Lm3/w$e;->b(II)Z

    move-result p1

    if-nez p1, :cond_f

    .line 41
    invoke-direct {p0, v0, v1}, Lm3/w;->f1(II)V

    .line 42
    :cond_f
    iget-object p0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v5

    .line 43
    :cond_10
    iget-boolean p1, p0, Lm3/w;->k:Z

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lm3/w;->F:Z

    if-eqz p1, :cond_11

    .line 44
    iget-object p1, p0, Lm3/w;->c:Lm3/f;

    invoke-virtual {p1}, Lm3/f;->E()V

    .line 45
    invoke-direct {p0, v0, v1}, Lm3/w;->b0(II)V

    .line 46
    iget-object p0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v5

    .line 47
    :cond_11
    iget-object p0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v4
.end method

.method public e(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lm3/w;->q:Landroid/graphics/RectF;

    return-void
.end method

.method public f(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lm3/w;->m:Landroid/graphics/Bitmap;

    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDimEnabled enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VisionTextDrawHelperImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-boolean p1, p0, Lm3/w;->u:Z

    return-void
.end method

.method public h(Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lm3/w;->b:Landroid/view/View;

    .line 2
    invoke-direct {p0}, Lm3/w;->v0()V

    .line 3
    invoke-virtual {p0}, Lm3/w;->i0()Landroid/content/Context;

    move-result-object p1

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lm3/w;->S:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method

.method public i(FFZ)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lm3/w;->G:Z

    const-string v1, "VisionTextDrawHelperImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lm3/w;->C0()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget v0, p0, Lm3/w;->A:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    iget v0, p0, Lm3/w;->B:I

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startTextSelectionWithCoordinate: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f000000    # 0.5f

    add-float v4, p1, v0

    float-to-int v4, v4

    add-float/2addr v0, p2

    float-to-int v0, v0

    .line 4
    invoke-direct {p0, p1, p2}, Lm3/w;->w0(FF)V

    .line 5
    invoke-direct {p0, v4, v0}, Lm3/w;->Y0(II)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "hit a text"

    .line 6
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    if-eqz p3, :cond_2

    .line 8
    iput-boolean v3, p0, Lm3/w;->k:Z

    .line 9
    iput-boolean v3, p0, Lm3/w;->F:Z

    .line 10
    invoke-virtual {p0}, Lm3/w;->u0()V

    goto :goto_0

    .line 11
    :cond_2
    iput-boolean v2, p0, Lm3/w;->F:Z

    .line 12
    invoke-virtual {p0}, Lm3/w;->a1()V

    :goto_0
    return v3

    :cond_3
    const-string p1, "hit no text"

    .line 13
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iput-boolean v2, p0, Lm3/w;->k:Z

    .line 15
    invoke-virtual {p0}, Lm3/w;->j()V

    :cond_4
    :goto_1
    return v2

    :cond_5
    :goto_2
    const-string/jumbo p0, "startTextSelectionWithCoordinate is not supported on legacy mode!"

    .line 16
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method i0()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lm3/w;->a:Landroid/content/Context;

    return-object p0
.end method

.method public j()V
    .locals 4

    const-string v0, "VisionTextDrawHelperImpl"

    const-string v1, "clearAllSelection"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    .line 2
    sput-object v0, Lm3/w;->k0:Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    .line 3
    :goto_0
    iget-object v3, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 4
    iget-object v3, p0, Lm3/w;->W:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm3/w$f;

    invoke-virtual {v3, v1}, Lm3/w$f;->g(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lm3/w;->c:Lm3/f;

    invoke-virtual {v1}, Lm3/f;->E()V

    .line 6
    iget-object v1, p0, Lm3/w;->Z:Lm3/w$e;

    invoke-virtual {v1}, Lm3/w$e;->f()V

    .line 7
    iget-object v1, p0, Lm3/w;->a0:Lm3/w$e;

    invoke-virtual {v1}, Lm3/w$e;->f()V

    .line 8
    iget-object v1, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 9
    invoke-direct {p0, v0}, Lm3/w;->Z0(Ljava/lang/String;)V

    return-void
.end method

.method m0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lm3/w;->j:Ljava/lang/String;

    return-object p0
.end method

.method n0(Ljava/util/List;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public p0()Ll3/a;
    .locals 0

    iget-object p0, p0, Lm3/w;->f:Ll3/a;

    return-object p0
.end method

.method public q0()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lm3/w;->z0()V

    .line 2
    iget-object p0, p0, Lm3/w;->g:Ljava/lang/String;

    return-object p0
.end method

.method s0()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lm3/w;->b:Landroid/view/View;

    return-object p0
.end method

.method public t0(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const-string v3, ", "

    const-string v4, "VisionTextDrawHelperImpl"

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    sget-boolean v2, Lm3/w;->i0:Z

    if-eqz v2, :cond_1

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleTouchEvent "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " actionMasked="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " handleMode="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lm3/w;->b0:Lm3/w$d;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mOnScaleOrTranslation="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lm3/w;->C:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mScaleState="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lm3/w;->A:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v2, :cond_2

    .line 8
    iget-object v2, p0, Lm3/w;->c:Lm3/f;

    invoke-virtual {v2}, Lm3/f;->E()V

    .line 9
    iput-boolean v6, p0, Lm3/w;->C:Z

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 11
    iget-boolean v2, p0, Lm3/w;->C:Z

    if-nez v2, :cond_7

    .line 12
    iget v2, p0, Lm3/w;->A:I

    if-eq v2, v7, :cond_4

    iget v2, p0, Lm3/w;->B:I

    if-ne v2, v7, :cond_3

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v7

    :goto_1
    iput-boolean v2, p0, Lm3/w;->C:Z

    goto :goto_2

    .line 13
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v7, :cond_7

    iget-boolean v2, p0, Lm3/w;->k:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lm3/w;->C:Z

    if-eqz v2, :cond_7

    .line 14
    :cond_6
    iput-boolean v6, p0, Lm3/w;->C:Z

    .line 15
    iput-boolean v6, p0, Lm3/w;->k:Z

    .line 16
    invoke-virtual {p0}, Lm3/w;->a1()V

    .line 17
    :cond_7
    :goto_2
    iget-boolean v2, p0, Lm3/w;->C:Z

    if-eqz v2, :cond_8

    .line 18
    invoke-direct {p0}, Lm3/w;->V0()V

    .line 19
    :cond_8
    iget-object v2, p0, Lm3/w;->b0:Lm3/w$d;

    sget-object v8, Lm3/w$d;->a:Lm3/w$d;

    if-eq v2, v8, :cond_a

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eq v2, v7, :cond_9

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v9, 0x3

    if-ne v2, v9, :cond_a

    .line 22
    :cond_9
    invoke-direct {p0}, Lm3/w;->f0()V

    .line 23
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "handleTouchEvent finishHandleControlling "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 24
    :cond_a
    iget-object v2, p0, Lm3/w;->b0:Lm3/w$d;

    if-ne v2, v8, :cond_d

    .line 25
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-nez v2, :cond_d

    .line 26
    iget-object v2, p0, Lm3/w;->Z:Lm3/w$e;

    invoke-virtual {v2, v0, v1}, Lm3/w$e;->b(II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 27
    sget-object p1, Lm3/w$d;->b:Lm3/w$d;

    iput-object p1, p0, Lm3/w;->b0:Lm3/w$d;

    return v7

    .line 28
    :cond_b
    iget-object v2, p0, Lm3/w;->a0:Lm3/w$e;

    invoke-virtual {v2, v0, v1}, Lm3/w$e;->b(II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 29
    sget-object p1, Lm3/w$d;->c:Lm3/w$d;

    iput-object p1, p0, Lm3/w;->b0:Lm3/w$d;

    return v7

    :cond_c
    const/16 v2, 0x12c

    .line 30
    invoke-direct {p0, v2}, Lm3/w;->T0(I)V

    .line 31
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v5, :cond_12

    .line 32
    iget-object p1, p0, Lm3/w;->b0:Lm3/w$d;

    sget-object v2, Lm3/w$d;->b:Lm3/w$d;

    if-ne p1, v2, :cond_f

    .line 33
    iget-object p1, p0, Lm3/w;->Z:Lm3/w$e;

    invoke-virtual {p1, v0, v1}, Lm3/w$e;->b(II)Z

    move-result p1

    if-nez p1, :cond_e

    .line 34
    invoke-direct {p0, v0, v1}, Lm3/w;->g1(II)V

    .line 35
    :cond_e
    iget-object p0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v7

    .line 36
    :cond_f
    sget-object v2, Lm3/w$d;->c:Lm3/w$d;

    if-ne p1, v2, :cond_11

    .line 37
    iget-object p1, p0, Lm3/w;->a0:Lm3/w$e;

    invoke-virtual {p1, v0, v1}, Lm3/w$e;->b(II)Z

    move-result p1

    if-nez p1, :cond_10

    .line 38
    invoke-direct {p0, v0, v1}, Lm3/w;->f1(II)V

    .line 39
    :cond_10
    iget-object p0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v7

    .line 40
    :cond_11
    iget-boolean p1, p0, Lm3/w;->k:Z

    if-eqz p1, :cond_12

    .line 41
    invoke-direct {p0, v0, v1}, Lm3/w;->b0(II)V

    .line 42
    iget-object p0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v7

    .line 43
    :cond_12
    iget-object p0, p0, Lm3/w;->b:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v6
.end method

.method public u0()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lm3/w;->E0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "VisionTextDrawHelperImpl"

    const-string v0, "Vibration is off"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lm3/w;->Q()V

    return-void
.end method
