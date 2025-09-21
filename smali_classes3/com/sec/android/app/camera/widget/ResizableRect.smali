.class public Lcom/sec/android/app/camera/widget/ResizableRect;
.super Landroid/widget/ImageView;
.source "ResizableRect.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/ResizableRect$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private f:I

.field private g:I

.field private k:I

.field private l:F

.field private m:F

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/graphics/Point;

.field private r:Landroid/graphics/PointF;

.field private s:Landroid/graphics/PointF;

.field private t:Landroid/graphics/Rect;

.field private u:Lcom/sec/android/app/camera/widget/ResizableRect$a;

.field private v:I

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->b:I

    .line 3
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->o:Z

    .line 4
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create()Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    .line 5
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/PointFFactory;->create()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->r:Landroid/graphics/PointF;

    .line 6
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/PointFFactory;->create()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->s:Landroid/graphics/PointF;

    .line 7
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/RectFactory;->create()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    .line 8
    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->v:I

    .line 9
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/ResizableRect;->s(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private B(III)V
    .locals 3

    .line 1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-eq p1, v2, :cond_5

    if-eq p1, v1, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    mul-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_2
    mul-int/lit8 p3, p2, -0x1

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_4
    if-eqz v0, :cond_6

    mul-int/lit8 p2, p3, -0x1

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    move p2, p3

    :cond_6
    :goto_1
    move p3, p2

    .line 2
    :goto_2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 3
    iget p2, p1, Landroid/graphics/Point;->y:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 4
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    mul-int/2addr p3, v1

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    .line 5
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    return-void
.end method

.method private C(III)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create()Landroid/graphics/Point;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 3
    iput v1, v0, Landroid/graphics/Point;->y:I

    packed-switch p1, :pswitch_data_0

    return-void

    .line 4
    :pswitch_0
    iput p2, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 p2, p2, -0x1

    :pswitch_1
    move p3, v1

    goto :goto_1

    .line 5
    :pswitch_2
    iput p3, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 p3, p3, -0x1

    :pswitch_3
    move p2, v1

    goto :goto_1

    .line 6
    :pswitch_4
    iput p3, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 7
    :pswitch_5
    iput p2, v0, Landroid/graphics/Point;->x:I

    mul-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 8
    :pswitch_6
    iput p2, v0, Landroid/graphics/Point;->x:I

    .line 9
    iput p3, v0, Landroid/graphics/Point;->y:I

    mul-int/lit8 p2, p2, -0x1

    :goto_0
    mul-int/lit8 p3, p3, -0x1

    .line 10
    :goto_1
    :pswitch_7
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 11
    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 12
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    .line 13
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private D(III)V
    .locals 4

    .line 1
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2
    :goto_0
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/PointFactory;->create()Landroid/graphics/Point;

    move-result-object v1

    .line 3
    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 4
    iput v3, v1, Landroid/graphics/Point;->y:I

    if-eq p1, v2, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_2

    mul-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_2
    mul-int/lit8 p3, p2, -0x1

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    mul-int/lit8 p3, p2, -0x1

    .line 5
    :goto_1
    iput p3, v1, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_5
    if-eqz v0, :cond_6

    mul-int/lit8 p2, p3, -0x1

    .line 6
    :cond_6
    iput p2, v1, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    move p2, p3

    .line 7
    :cond_8
    iput p2, v1, Landroid/graphics/Point;->x:I

    .line 8
    iput p2, v1, Landroid/graphics/Point;->y:I

    :goto_2
    move p3, p2

    .line 9
    :goto_3
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, v1, Landroid/graphics/Point;->x:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 10
    iget p2, p1, Landroid/graphics/Point;->y:I

    iget v0, v1, Landroid/graphics/Point;->y:I

    add-int/2addr p2, v0

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 11
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    .line 12
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    return-void
.end method

.method private a(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_2

    const-string v0, "ResizableRect"

    const-string v1, "exceeds bottom boundary"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    add-int v3, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 5
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    :cond_2
    return-void
.end method

.method private b()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v4, v3

    sub-float v4, v2, v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float v0, v2, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v0, v3

    int-to-float v1, v3

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    int-to-float v4, v0

    sub-float v4, v2, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v1, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 9
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    :cond_2
    :goto_0
    return-void
.end method

.method private c()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v4, v3

    sub-float v4, v2, v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v3

    int-to-float v1, v3

    sub-float v1, v2, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 3
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    .line 4
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v3, v1

    cmpg-float v3, v3, v2

    if-gez v3, :cond_1

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    int-to-float v5, v0

    sub-float v5, v2, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v0

    int-to-float v0, v0

    sub-float v0, v2, v0

    add-float/2addr v3, v0

    float-to-int v0, v3

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 8
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    :cond_1
    int-to-float v1, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    int-to-float v4, v0

    sub-float v4, v2, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 10
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    goto :goto_0

    .line 11
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v1, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 12
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    :cond_3
    :goto_0
    return-void
.end method

.method private d(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_2

    const-string v0, "ResizableRect"

    const-string v1, "exceeds left boundary"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int v2, v0, v1

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    .line 4
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int v3, v1, v2

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 6
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    sub-int v0, v1, v2

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    .line 7
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    sub-int/2addr v1, v2

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->left:I

    iput p0, p1, Landroid/graphics/Point;->x:I

    :cond_2
    return-void
.end method

.method private e()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v4, v3

    sub-float v4, v2, v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 3
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v5, v4

    sub-float v5, v2, v5

    sub-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v3

    int-to-float v1, v3

    sub-float v1, v2, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v4

    int-to-float v1, v4

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    int-to-float v4, v0

    sub-float v4, v2, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 8
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    goto :goto_0

    .line 9
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v1, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    int-to-float v4, v0

    sub-float v4, v2, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 11
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    :cond_2
    :goto_0
    return-void
.end method

.method private f()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v4, v3

    sub-float v4, v2, v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 3
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v5, v4

    sub-float v5, v2, v5

    sub-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v3

    int-to-float v1, v3

    sub-float v1, v2, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v4

    int-to-float v1, v4

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v3, v1

    cmpg-float v3, v3, v2

    if-gez v3, :cond_1

    .line 7
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    int-to-float v5, v0

    sub-float v5, v2, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 8
    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    int-to-float v5, v1

    sub-float v5, v2, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v0

    int-to-float v0, v0

    sub-float v0, v2, v0

    add-float/2addr v3, v0

    float-to-int v0, v3

    .line 9
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 10
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    :cond_1
    int-to-float v1, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    int-to-float v4, v0

    sub-float v4, v2, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 12
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    goto :goto_0

    .line 13
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v1, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 14
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    int-to-float v4, v0

    sub-float v4, v2, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 15
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    :cond_3
    :goto_0
    return-void
.end method

.method private g()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->p:Z

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "ResizableRect"

    const-string v1, "exceeds max size"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v4, v3

    sub-float v4, v2, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 5
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v6, v4

    sub-float v6, v2, v6

    div-float/2addr v6, v5

    sub-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v3

    int-to-float v1, v3

    sub-float v1, v2, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 6
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v4

    int-to-float v1, v4

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    :cond_1
    return-void
.end method

.method private h(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v0, v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    const-string v0, "ResizableRect"

    const-string v1, "exceeds max size"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v0, p1

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    int-to-float p1, p1

    sub-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    .line 4
    :pswitch_1
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, p1

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    int-to-float p1, p1

    sub-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v3, v2

    sub-float v3, v1, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, v2

    int-to-float v0, v2

    sub-float/2addr v1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 6
    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v3, v2

    sub-float v3, v1, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, v2

    int-to-float v0, v2

    sub-float/2addr v1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 8
    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->k()V

    goto :goto_0

    .line 10
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->n()V

    goto :goto_0

    .line 11
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->b()V

    goto :goto_0

    .line 12
    :pswitch_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->e()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private i()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->p:Z

    const-string v1, "ResizableRect"

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v0, v0

    cmpg-float v0, v0, v3

    if-gez v0, :cond_3

    :cond_0
    const-string v0, "checkMinBoundary : less than minimum size"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v5, v4

    sub-float v5, v3, v5

    div-float/2addr v5, v2

    sub-float/2addr v1, v5

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 5
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v5, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v6, v5

    sub-float v6, v3, v6

    div-float/2addr v6, v2

    sub-float/2addr v1, v6

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v4

    int-to-float v1, v4

    sub-float v1, v3, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 6
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v5

    int-to-float v1, v5

    sub-float/2addr v3, v1

    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    .line 8
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v0

    iget v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    cmpg-float v0, v0, v3

    const-string v3, ", effectGuideMinSize ::"

    if-gez v0, :cond_2

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMinBoundary : less than minimum width - currentWidth ::"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    iget v6, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v6, v6

    sub-float v6, v5, v6

    div-float/2addr v6, v2

    sub-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Point;->x:I

    float-to-int v0, v5

    .line 11
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    .line 12
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v0, v0

    iget v4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_3

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMinBoundary : less than minimum height - currentHeight ::"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    iget v4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v4, v4

    sub-float v4, v3, v4

    div-float/2addr v4, v2

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    float-to-int v0, v3

    .line 15
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    :cond_3
    :goto_0
    return-void
.end method

.method private j(I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v0, v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    const-string v0, "ResizableRect"

    const-string v1, "less than minimum size"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 3
    :pswitch_0
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v0, p1

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    int-to-float p1, p1

    sub-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    .line 4
    :pswitch_1
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, p1

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    int-to-float p1, p1

    sub-float/2addr v1, p1

    add-float/2addr v0, v1

    float-to-int p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v3, v2

    sub-float v3, v1, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    int-to-float p1, v2

    int-to-float v0, v2

    sub-float/2addr v1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 6
    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    goto :goto_0

    .line 7
    :pswitch_3
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v3, v2

    sub-float v3, v1, v3

    sub-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, v2

    int-to-float v0, v2

    sub-float/2addr v1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    .line 8
    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    .line 9
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->l()V

    goto :goto_0

    .line 10
    :pswitch_5
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->o()V

    goto :goto_0

    .line 11
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->c()V

    goto :goto_0

    .line 12
    :pswitch_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->f()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private k()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    int-to-float v0, v0

    sub-float v0, v2, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    goto :goto_0

    .line 6
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v1, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    :cond_2
    :goto_0
    return-void
.end method

.method private l()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    int-to-float v0, v0

    sub-float v0, v2, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v3, v1

    cmpg-float v3, v3, v2

    if-gez v3, :cond_1

    int-to-float v3, v0

    int-to-float v0, v0

    sub-float v0, v2, v0

    add-float/2addr v3, v0

    float-to-int v0, v3

    .line 5
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 6
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    :cond_1
    int-to-float v1, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    goto :goto_0

    .line 8
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v1, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 9
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    :cond_3
    :goto_0
    return-void
.end method

.method private m(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_2

    const-string v0, "ResizableRect"

    const-string v1, "exceeds right boundary"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    add-int v3, v1, v2

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    add-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 5
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    :cond_2
    return-void
.end method

.method private n()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v4, v3

    sub-float v4, v2, v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float v0, v2, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v3

    int-to-float v1, v3

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 6
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    goto :goto_0

    .line 7
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v1, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    int-to-float v4, v0

    sub-float v4, v2, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 9
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    :cond_2
    :goto_0
    return-void
.end method

.method private o()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->p:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    iget v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v4, v3

    sub-float v4, v2, v4

    sub-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float v0, v2, v0

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v3

    int-to-float v1, v3

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 4
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v1, v0

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v3, v1

    cmpg-float v3, v3, v2

    if-gez v3, :cond_1

    .line 6
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    int-to-float v5, v1

    sub-float v5, v2, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v0

    int-to-float v0, v0

    sub-float v0, v2, v0

    add-float/2addr v3, v0

    float-to-int v0, v3

    .line 7
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    .line 8
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    :cond_1
    int-to-float v1, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 9
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    goto :goto_0

    .line 10
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v1, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 11
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    int-to-float v4, v0

    sub-float v4, v2, v4

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v0

    int-to-float v0, v0

    sub-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 12
    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    :cond_3
    :goto_0
    return-void
.end method

.method private p(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_2

    const-string v0, "ResizableRect"

    const-string v1, "exceeds top boundary"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int v2, v0, v1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    .line 4
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    sub-int/2addr v0, v1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v2

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 6
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    sub-int v0, v1, v2

    add-int/2addr p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    .line 7
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    sub-int/2addr v1, v2

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->top:I

    iput p0, p1, Landroid/graphics/Point;->y:I

    :cond_2
    return-void
.end method

.method private q(FF)I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->a:I

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->a:I

    sub-int/2addr v1, v2

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " y "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "w : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", h : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", right bd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bottom bd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", vertexW : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResizableRect"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget p0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->a:I

    int-to-float v2, p0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    int-to-float p0, v1

    cmpl-float p0, p2, p0

    if-lez p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x6

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_5

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_3

    const/4 p0, 0x3

    goto :goto_0

    :cond_3
    int-to-float p0, v1

    cmpl-float p0, p2, p0

    if-lez p0, :cond_4

    const/4 p0, 0x4

    goto :goto_0

    :cond_4
    const/4 p0, 0x7

    goto :goto_0

    :cond_5
    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gez p0, :cond_6

    const/4 p0, 0x5

    goto :goto_0

    :cond_6
    int-to-float p0, v1

    cmpl-float p0, p2, p0

    if-lez p0, :cond_7

    const/16 p0, 0x8

    goto :goto_0

    :cond_7
    const/16 p0, 0x9

    :goto_0
    return p0
.end method

.method private r(FF)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->a:I

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v1

    iget p0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->a:I

    sub-int/2addr v1, p0

    int-to-float v2, p0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    int-to-float v2, p0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    int-to-float v2, p0

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_2

    int-to-float p0, v1

    cmpl-float p0, p2, p0

    if-lez p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    if-lez v0, :cond_3

    int-to-float p0, v1

    cmpl-float p0, p2, p0

    if-lez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/16 p0, 0x9

    return p0
.end method

.method private s(Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/R$styleable;->ResizableRect:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->a:I

    .line 3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    :cond_0
    invoke-virtual {p0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private v()Z
    .locals 1

    iget p0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->c:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

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

.method private w()Z
    .locals 2

    iget p0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->c:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private x(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->o:Z

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-ge p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    sub-int p1, v1, p1

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-ge p2, v0, :cond_2

    move p2, v0

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v1, :cond_3

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    sub-int p2, v1, p2

    .line 8
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    .line 9
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0xf

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 11
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 12
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 13
    iget p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->w:I

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 14
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->x:I

    iget p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 15
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private y(IFF)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->s:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    sub-float v1, p2, v1

    float-to-int v1, v1

    .line 2
    iget v2, v0, Landroid/graphics/PointF;->y:F

    sub-float v2, p3, v2

    float-to-int v2, v2

    .line 3
    iput p2, v0, Landroid/graphics/PointF;->x:F

    .line 4
    iput p3, v0, Landroid/graphics/PointF;->y:F

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result p3

    iput p3, p2, Landroid/graphics/Point;->x:I

    .line 6
    iget-object p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result p3

    iput p3, p2, Landroid/graphics/Point;->y:I

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p2

    iput p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    .line 9
    iget-boolean p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->n:Z

    if-eqz p2, :cond_1

    .line 10
    iget-boolean p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->p:Z

    if-eqz p2, :cond_0

    .line 11
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/app/camera/widget/ResizableRect;->D(III)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/app/camera/widget/ResizableRect;->C(III)V

    .line 13
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ResizableRect;->j(I)V

    .line 14
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ResizableRect;->h(I)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-direct {p0, p1, v1, v2}, Lcom/sec/android/app/camera/widget/ResizableRect;->B(III)V

    .line 16
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->i()V

    .line 17
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->g()V

    .line 18
    :goto_1
    iget-boolean p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->o:Z

    if-eqz p2, :cond_2

    .line 19
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ResizableRect;->d(I)V

    .line 20
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ResizableRect;->m(I)V

    .line 21
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ResizableRect;->a(I)V

    .line 22
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/ResizableRect;->p(I)V

    .line 23
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 p2, 0xe

    .line 24
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 p2, 0xf

    .line 25
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 26
    iget-object p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget p3, p2, Landroid/graphics/Point;->x:I

    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 27
    iget p2, p2, Landroid/graphics/Point;->y:I

    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 28
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->w:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p3

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 29
    iget p3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->x:I

    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    sub-int/2addr p3, v0

    sub-int/2addr p3, p2

    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 30
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 31
    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public A(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2
    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 3
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    .line 4
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float v0, v0

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->i()V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->g()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 9
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    iput v0, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public E(IIII)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->o:Z

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->t:Landroid/graphics/Rect;

    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 3
    iput p2, p0, Landroid/graphics/Rect;->right:I

    .line 4
    iput p3, p0, Landroid/graphics/Rect;->top:I

    .line 5
    iput p4, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method public F(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->w:I

    .line 2
    iput p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->x:I

    return-void
.end method

.method public G(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->l:F

    .line 2
    iput p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->m:F

    return-void
.end method

.method public H(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->v:I

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->v:I

    const/16 v0, -0x5a

    if-eq p1, v0, :cond_3

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lu3/b;->b:Lu3/b;

    invoke-static {p1}, Lu3/d;->e(Lu3/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->w:I

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 4
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->x:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    goto :goto_2

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    float-to-int p1, p1

    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    goto :goto_3

    .line 7
    :cond_2
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->w:I

    int-to-float p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    .line 10
    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->x:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    :goto_2
    sub-float/2addr v0, v1

    goto :goto_1

    .line 11
    :goto_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_d

    if-eq v1, v5, :cond_7

    if-eq v1, v3, :cond_4

    return v4

    .line 12
    :cond_4
    iget p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->f:I

    sub-int p2, v0, p2

    .line 13
    iget v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->d:I

    sub-int v1, p1, v1

    .line 14
    iget v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->b:I

    if-ne v2, v3, :cond_5

    .line 15
    invoke-direct {p0, v1, p2}, Lcom/sec/android/app/camera/widget/ResizableRect;->x(II)V

    .line 16
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->u:Lcom/sec/android/app/camera/widget/ResizableRect$a;

    if-eqz p0, :cond_6

    .line 17
    invoke-interface {p0, v5}, Lcom/sec/android/app/camera/widget/ResizableRect$a;->onMove(I)V

    goto :goto_4

    :cond_5
    if-ne v2, v5, :cond_6

    .line 18
    iget p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->c:I

    int-to-float p1, p1

    int-to-float v0, v0

    invoke-direct {p0, p2, p1, v0}, Lcom/sec/android/app/camera/widget/ResizableRect;->y(IFF)V

    .line 19
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->u:Lcom/sec/android/app/camera/widget/ResizableRect$a;

    if-eqz p0, :cond_6

    const/4 p1, 0x4

    .line 20
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/widget/ResizableRect$a;->onResize(I)V

    :cond_6
    :goto_4
    return v5

    .line 21
    :cond_7
    iget p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->b:I

    if-nez p2, :cond_8

    return v4

    .line 22
    :cond_8
    iget-object p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->u:Lcom/sec/android/app/camera/widget/ResizableRect$a;

    if-eqz p2, :cond_c

    .line 23
    iget-object p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->r:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    int-to-float p1, p1

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 24
    iget-object p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->r:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    .line 25
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->p:Z

    if-nez v0, :cond_9

    iget v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->c:I

    if-eqz v0, :cond_9

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    add-float/2addr p1, p2

    const/high16 p2, 0x41f00000    # 30.0f

    cmpg-float p1, p1, p2

    if-gez p1, :cond_9

    .line 26
    iput v2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->b:I

    .line 27
    :cond_9
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->b:I

    if-ne p1, v2, :cond_a

    .line 28
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->u:Lcom/sec/android/app/camera/widget/ResizableRect$a;

    iget-object p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->r:Landroid/graphics/PointF;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/widget/ResizableRect$a;->onClick(Landroid/graphics/PointF;)V

    goto :goto_5

    :cond_a
    if-ne p1, v3, :cond_b

    .line 29
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->u:Lcom/sec/android/app/camera/widget/ResizableRect$a;

    invoke-interface {p1, v3}, Lcom/sec/android/app/camera/widget/ResizableRect$a;->onMove(I)V

    goto :goto_5

    :cond_b
    if-ne p1, v5, :cond_c

    .line 30
    iget-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->u:Lcom/sec/android/app/camera/widget/ResizableRect$a;

    const/4 p2, 0x5

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/widget/ResizableRect$a;->onResize(I)V

    .line 31
    :cond_c
    :goto_5
    iput v4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->b:I

    return v5

    .line 32
    :cond_d
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->r:Landroid/graphics/PointF;

    int-to-float v6, p1

    int-to-float v7, v0

    invoke-virtual {v1, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 33
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->s:Landroid/graphics/PointF;

    invoke-virtual {v1, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 34
    iput v4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->b:I

    .line 35
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_12

    .line 36
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->d:I

    .line 37
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->f:I

    .line 38
    iget-boolean p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->p:Z

    if-eqz p1, :cond_e

    .line 39
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/ResizableRect;->r(FF)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->c:I

    goto :goto_6

    .line 40
    :cond_e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/widget/ResizableRect;->q(FF)I

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->c:I

    .line 41
    :goto_6
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->c:I

    if-eqz p1, :cond_11

    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->w()Z

    move-result p1

    if-nez p1, :cond_10

    iget-boolean p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->p:Z

    if-nez p1, :cond_f

    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->v()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_7

    .line 43
    :cond_f
    iput v3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->b:I

    .line 44
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->u:Lcom/sec/android/app/camera/widget/ResizableRect$a;

    if-eqz p0, :cond_11

    .line 45
    invoke-interface {p0, v4}, Lcom/sec/android/app/camera/widget/ResizableRect$a;->onMove(I)V

    goto :goto_8

    .line 46
    :cond_10
    :goto_7
    iput v5, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->b:I

    .line 47
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->u:Lcom/sec/android/app/camera/widget/ResizableRect$a;

    if-eqz p0, :cond_11

    .line 48
    invoke-interface {p0, v2}, Lcom/sec/android/app/camera/widget/ResizableRect$a;->onResize(I)V

    :cond_11
    :goto_8
    return v5

    :cond_12
    return v4
.end method

.method public setResizableRectEventListener(Lcom/sec/android/app/camera/widget/ResizableRect$a;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->u:Lcom/sec/android/app/camera/widget/ResizableRect$a;

    return-void
.end method

.method public setResizeThreeCorners(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->n:Z

    return-void
.end method

.method public setSquare(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->p:Z

    return-void
.end method

.method public t(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iput p1, v0, Landroid/graphics/Point;->x:I

    .line 2
    iput p2, v0, Landroid/graphics/Point;->y:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xe

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v1, 0xf

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 6
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 7
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 8
    iget p2, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->w:I

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 9
    iget p1, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->x:I

    iget p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public u(Landroid/graphics/RectF;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 2
    iget p1, p1, Landroid/graphics/RectF;->top:F

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Point;->y:I

    return-void
.end method

.method public z(FFIIZ)Landroid/graphics/RectF;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->q:Landroid/graphics/Point;

    float-to-int v1, p1

    iput v1, v0, Landroid/graphics/Point;->x:I

    float-to-int v1, p2

    .line 2
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 3
    iput p3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    .line 4
    iput p4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->i()V

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/ResizableRect;->g()V

    if-eqz p5, :cond_0

    .line 7
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 8
    iget p4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    iput p4, p3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 9
    iget p4, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    iput p4, p3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 10
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    :cond_0
    iget p3, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->g:I

    int-to-float p3, p3

    add-float/2addr p3, p1

    iget p0, p0, Lcom/sec/android/app/camera/widget/ResizableRect;->k:I

    int-to-float p0, p0

    add-float/2addr p0, p2

    invoke-static {p1, p2, p3, p0}, Lcom/sec/android/app/camera/util/factory/RectFFactory;->create(FFFF)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method
