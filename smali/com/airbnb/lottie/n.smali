.class public Lcom/airbnb/lottie/n;
.super Landroid/graphics/drawable/Drawable;
.source "LottieDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/lottie/n$c;,
        Lcom/airbnb/lottie/n$b;
    }
.end annotation


# instance fields
.field private final A:Landroid/graphics/Matrix;

.field private B:Landroid/graphics/Bitmap;

.field private C:Landroid/graphics/Canvas;

.field private D:Landroid/graphics/Rect;

.field private E:Landroid/graphics/RectF;

.field private F:Landroid/graphics/Paint;

.field private G:Landroid/graphics/Rect;

.field private H:Landroid/graphics/Rect;

.field private I:Landroid/graphics/RectF;

.field private J:Landroid/graphics/RectF;

.field private K:Landroid/graphics/Matrix;

.field private L:Landroid/graphics/Matrix;

.field private M:Z

.field private a:Lh/h;

.field private final b:Lt/e;

.field private c:Z

.field private d:Z

.field private f:Z

.field private g:Lcom/airbnb/lottie/n$c;

.field private final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/airbnb/lottie/n$b;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private m:Ll/b;

.field private n:Ljava/lang/String;

.field private o:Lh/b;

.field private p:Ll/a;

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lp/c;

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Lh/a0;

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, Lt/e;

    invoke-direct {v0}, Lt/e;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/airbnb/lottie/n;->c:Z

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Lcom/airbnb/lottie/n;->d:Z

    .line 5
    iput-boolean v2, p0, Lcom/airbnb/lottie/n;->f:Z

    .line 6
    sget-object v3, Lcom/airbnb/lottie/n$c;->a:Lcom/airbnb/lottie/n$c;

    iput-object v3, p0, Lcom/airbnb/lottie/n;->g:Lcom/airbnb/lottie/n$c;

    .line 7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    .line 8
    new-instance v3, Lcom/airbnb/lottie/n$a;

    invoke-direct {v3, p0}, Lcom/airbnb/lottie/n$a;-><init>(Lcom/airbnb/lottie/n;)V

    iput-object v3, p0, Lcom/airbnb/lottie/n;->l:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 9
    iput-boolean v2, p0, Lcom/airbnb/lottie/n;->r:Z

    .line 10
    iput-boolean v1, p0, Lcom/airbnb/lottie/n;->s:Z

    const/16 v1, 0xff

    .line 11
    iput v1, p0, Lcom/airbnb/lottie/n;->u:I

    .line 12
    sget-object v1, Lh/a0;->a:Lh/a0;

    iput-object v1, p0, Lcom/airbnb/lottie/n;->y:Lh/a0;

    .line 13
    iput-boolean v2, p0, Lcom/airbnb/lottie/n;->z:Z

    .line 14
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/airbnb/lottie/n;->A:Landroid/graphics/Matrix;

    .line 15
    iput-boolean v2, p0, Lcom/airbnb/lottie/n;->M:Z

    .line 16
    invoke-virtual {v0, v3}, Lt/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private C(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->B:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lt v0, p1, :cond_2

    iget-object v0, p0, Lcom/airbnb/lottie/n;->B:Landroid/graphics/Bitmap;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ge v0, p2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/n;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/airbnb/lottie/n;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, p2, :cond_3

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->B:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/n;->B:Landroid/graphics/Bitmap;

    .line 6
    iget-object p2, p0, Lcom/airbnb/lottie/n;->C:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 7
    iput-boolean v1, p0, Lcom/airbnb/lottie/n;->M:Z

    goto :goto_1

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/n;->B:Landroid/graphics/Bitmap;

    .line 9
    iget-object p2, p0, Lcom/airbnb/lottie/n;->C:Landroid/graphics/Canvas;

    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 10
    iput-boolean v1, p0, Lcom/airbnb/lottie/n;->M:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private D()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->C:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/n;->C:Landroid/graphics/Canvas;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/n;->J:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/n;->K:Landroid/graphics/Matrix;

    .line 5
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/n;->L:Landroid/graphics/Matrix;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/n;->D:Landroid/graphics/Rect;

    .line 7
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/n;->E:Landroid/graphics/RectF;

    .line 8
    new-instance v0, Li/a;

    invoke-direct {v0}, Li/a;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/n;->F:Landroid/graphics/Paint;

    .line 9
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/n;->G:Landroid/graphics/Rect;

    .line 10
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/n;->H:Landroid/graphics/Rect;

    .line 11
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/airbnb/lottie/n;->I:Landroid/graphics/RectF;

    return-void
.end method

.method private H()Landroid/content/Context;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2
    :cond_0
    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private I()Ll/a;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/n;->p:Ll/a;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ll/a;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ll/a;-><init>(Landroid/graphics/drawable/Drawable$Callback;Lh/a;)V

    iput-object v0, p0, Lcom/airbnb/lottie/n;->p:Ll/a;

    .line 4
    :cond_1
    iget-object p0, p0, Lcom/airbnb/lottie/n;->p:Ll/a;

    return-object p0
.end method

.method private K()Ll/b;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/airbnb/lottie/n;->m:Ll/b;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/airbnb/lottie/n;->H()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Ll/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iput-object v1, p0, Lcom/airbnb/lottie/n;->m:Ll/b;

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->m:Ll/b;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Ll/b;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/n;->n:Ljava/lang/String;

    iget-object v3, p0, Lcom/airbnb/lottie/n;->o:Lh/b;

    iget-object v4, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    .line 6
    invoke-virtual {v4}, Lh/h;->j()Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Ll/b;-><init>(Landroid/graphics/drawable/Drawable$Callback;Ljava/lang/String;Lh/b;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/airbnb/lottie/n;->m:Ll/b;

    .line 7
    :cond_2
    iget-object p0, p0, Lcom/airbnb/lottie/n;->m:Ll/b;

    return-object p0
.end method

.method private Y()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 4
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 5
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getClipChildren()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static synthetic a(Lcom/airbnb/lottie/n;Lh/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/n;->e0(Lh/h;)V

    return-void
.end method

.method public static synthetic b(Lcom/airbnb/lottie/n;FLh/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/n;->i0(FLh/h;)V

    return-void
.end method

.method public static synthetic c(Lcom/airbnb/lottie/n;Lh/h;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/airbnb/lottie/n;->d0(Lh/h;)V

    return-void
.end method

.method private synthetic c0(Lm/e;Ljava/lang/Object;Lu/c;Lh/h;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/airbnb/lottie/n;->q(Lm/e;Ljava/lang/Object;Lu/c;)V

    return-void
.end method

.method public static synthetic d(Lcom/airbnb/lottie/n;FLh/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/n;->n0(FLh/h;)V

    return-void
.end method

.method private synthetic d0(Lh/h;)V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->q0()V

    return-void
.end method

.method public static synthetic e(Lcom/airbnb/lottie/n;FLh/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/n;->o0(FLh/h;)V

    return-void
.end method

.method private synthetic e0(Lh/h;)V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->v0()V

    return-void
.end method

.method public static synthetic f(Lcom/airbnb/lottie/n;Ljava/lang/String;Lh/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/n;->m0(Ljava/lang/String;Lh/h;)V

    return-void
.end method

.method private synthetic f0(ILh/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/n;->B0(I)V

    return-void
.end method

.method public static synthetic g(Lcom/airbnb/lottie/n;IILh/h;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/lottie/n;->j0(IILh/h;)V

    return-void
.end method

.method private synthetic g0(ILh/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/n;->G0(I)V

    return-void
.end method

.method public static synthetic h(Lcom/airbnb/lottie/n;ILh/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/n;->l0(ILh/h;)V

    return-void
.end method

.method private synthetic h0(Ljava/lang/String;Lh/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/n;->H0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic i(Lcom/airbnb/lottie/n;Ljava/lang/String;Lh/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/n;->h0(Ljava/lang/String;Lh/h;)V

    return-void
.end method

.method private synthetic i0(FLh/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/n;->I0(F)V

    return-void
.end method

.method public static synthetic j(Lcom/airbnb/lottie/n;Lm/e;Ljava/lang/Object;Lu/c;Lh/h;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/airbnb/lottie/n;->c0(Lm/e;Ljava/lang/Object;Lu/c;Lh/h;)V

    return-void
.end method

.method private synthetic j0(IILh/h;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/n;->J0(II)V

    return-void
.end method

.method public static synthetic k(Lcom/airbnb/lottie/n;ILh/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/n;->f0(ILh/h;)V

    return-void
.end method

.method private synthetic k0(Ljava/lang/String;Lh/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/n;->K0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(Lcom/airbnb/lottie/n;ILh/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/n;->g0(ILh/h;)V

    return-void
.end method

.method private synthetic l0(ILh/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/n;->L0(I)V

    return-void
.end method

.method public static synthetic m(Lcom/airbnb/lottie/n;Ljava/lang/String;Lh/h;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/airbnb/lottie/n;->k0(Ljava/lang/String;Lh/h;)V

    return-void
.end method

.method private synthetic m0(Ljava/lang/String;Lh/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/n;->M0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic n(Lcom/airbnb/lottie/n;)Lp/c;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->t:Lp/c;

    return-object p0
.end method

.method private synthetic n0(FLh/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/n;->N0(F)V

    return-void
.end method

.method static synthetic o(Lcom/airbnb/lottie/n;)Lt/e;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    return-object p0
.end method

.method private synthetic o0(FLh/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/n;->Q0(F)V

    return-void
.end method

.method private r()Z
    .locals 1

    iget-boolean v0, p0, Lcom/airbnb/lottie/n;->c:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/airbnb/lottie/n;->d:Z

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

.method private s()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v1, Lp/c;

    .line 3
    invoke-static {v0}, Lr/v;->a(Lh/h;)Lp/e;

    move-result-object v2

    invoke-virtual {v0}, Lh/h;->k()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lp/c;-><init>(Lcom/airbnb/lottie/n;Lp/e;Ljava/util/List;Lh/h;)V

    iput-object v1, p0, Lcom/airbnb/lottie/n;->t:Lp/c;

    .line 4
    iget-boolean v0, p0, Lcom/airbnb/lottie/n;->w:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {v1, v0}, Lp/c;->J(Z)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->t:Lp/c;

    iget-boolean p0, p0, Lcom/airbnb/lottie/n;->s:Z

    invoke-virtual {v0, p0}, Lp/c;->O(Z)V

    return-void
.end method

.method private t0(Landroid/graphics/Canvas;Lp/c;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->D()V

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/n;->K:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    .line 4
    iget-object v0, p0, Lcom/airbnb/lottie/n;->D:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 5
    iget-object v0, p0, Lcom/airbnb/lottie/n;->D:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/airbnb/lottie/n;->E:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/n;->w(Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/n;->K:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/airbnb/lottie/n;->E:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 7
    iget-object v0, p0, Lcom/airbnb/lottie/n;->E:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/airbnb/lottie/n;->D:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/airbnb/lottie/n;->x(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 8
    iget-boolean v0, p0, Lcom/airbnb/lottie/n;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/airbnb/lottie/n;->J:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->J:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2, v1}, Lp/c;->e(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/airbnb/lottie/n;->K:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/n;->J:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 15
    iget-object v3, p0, Lcom/airbnb/lottie/n;->J:Landroid/graphics/RectF;

    invoke-direct {p0, v3, v2, v0}, Lcom/airbnb/lottie/n;->w0(Landroid/graphics/RectF;FF)V

    .line 16
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->Y()Z

    move-result v3

    if-nez v3, :cond_2

    .line 17
    iget-object v3, p0, Lcom/airbnb/lottie/n;->J:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/airbnb/lottie/n;->D:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget v6, v4, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/RectF;->intersect(FFFF)Z

    .line 18
    :cond_2
    iget-object v3, p0, Lcom/airbnb/lottie/n;->J:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 19
    iget-object v4, p0, Lcom/airbnb/lottie/n;->J:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    if-eqz v3, :cond_5

    if-nez v4, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/airbnb/lottie/n;->C(II)V

    .line 21
    iget-boolean v5, p0, Lcom/airbnb/lottie/n;->M:Z

    if-eqz v5, :cond_4

    .line 22
    iget-object v5, p0, Lcom/airbnb/lottie/n;->A:Landroid/graphics/Matrix;

    iget-object v6, p0, Lcom/airbnb/lottie/n;->K:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 23
    iget-object v5, p0, Lcom/airbnb/lottie/n;->A:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 24
    iget-object v0, p0, Lcom/airbnb/lottie/n;->A:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/airbnb/lottie/n;->J:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    invoke-virtual {v0, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 25
    iget-object v0, p0, Lcom/airbnb/lottie/n;->B:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 26
    iget-object v0, p0, Lcom/airbnb/lottie/n;->C:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/airbnb/lottie/n;->A:Landroid/graphics/Matrix;

    iget v5, p0, Lcom/airbnb/lottie/n;->u:I

    invoke-virtual {p2, v0, v2, v5}, Lp/b;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 27
    iget-object p2, p0, Lcom/airbnb/lottie/n;->K:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/n;->L:Landroid/graphics/Matrix;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 28
    iget-object p2, p0, Lcom/airbnb/lottie/n;->L:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/airbnb/lottie/n;->I:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/airbnb/lottie/n;->J:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 29
    iget-object p2, p0, Lcom/airbnb/lottie/n;->I:Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/airbnb/lottie/n;->H:Landroid/graphics/Rect;

    invoke-direct {p0, p2, v0}, Lcom/airbnb/lottie/n;->x(Landroid/graphics/RectF;Landroid/graphics/Rect;)V

    .line 30
    :cond_4
    iget-object p2, p0, Lcom/airbnb/lottie/n;->G:Landroid/graphics/Rect;

    invoke-virtual {p2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 31
    iget-object p2, p0, Lcom/airbnb/lottie/n;->B:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/airbnb/lottie/n;->G:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/airbnb/lottie/n;->H:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/airbnb/lottie/n;->F:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private v()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/n;->y:Lh/a0;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {v0}, Lh/h;->q()Z

    move-result v3

    invoke-virtual {v0}, Lh/h;->m()I

    move-result v0

    .line 4
    invoke-virtual {v1, v2, v3, v0}, Lh/a0;->a(IZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/airbnb/lottie/n;->z:Z

    return-void
.end method

.method private w(Landroid/graphics/Rect;Landroid/graphics/RectF;)V
    .locals 2

    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private w0(Landroid/graphics/RectF;FF)V
    .locals 2

    iget p0, p1, Landroid/graphics/RectF;->left:F

    mul-float/2addr p0, p2

    iget v0, p1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v0, p3

    iget v1, p1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v1, p2

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    mul-float/2addr p2, p3

    invoke-virtual {p1, p0, v0, v1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private x(Landroid/graphics/RectF;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget p0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, p0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-double v0, v0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->right:F

    float-to-double v1, v1

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v2, p1

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 6
    invoke-virtual {p2, p0, v0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private y(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->t:Lp/c;

    .line 2
    iget-object v1, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/airbnb/lottie/n;->A:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Lh/h;->b()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 7
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lh/h;->b()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    .line 8
    iget-object v1, p0, Lcom/airbnb/lottie/n;->A:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/airbnb/lottie/n;->A:Landroid/graphics/Matrix;

    iget p0, p0, Lcom/airbnb/lottie/n;->u:I

    invoke-virtual {v0, p1, v1, p0}, Lp/b;->h(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/n;->q:Z

    return p0
.end method

.method public A0(Lh/a;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/n;->p:Ll/a;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ll/a;->c(Lh/a;)V

    :cond_0
    return-void
.end method

.method public B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {v0}, Lt/e;->i()V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/airbnb/lottie/n$c;->a:Lcom/airbnb/lottie/n$c;

    iput-object v0, p0, Lcom/airbnb/lottie/n;->g:Lcom/airbnb/lottie/n$c;

    :cond_0
    return-void
.end method

.method public B0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/j;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/j;-><init>(Lcom/airbnb/lottie/n;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lt/e;->z(F)V

    return-void
.end method

.method public C0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/n;->d:Z

    return-void
.end method

.method public D0(Lh/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/n;->o:Lh/b;

    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/n;->m:Ll/b;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Ll/b;->d(Lh/b;)V

    :cond_0
    return-void
.end method

.method public E(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->K()Ll/b;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ll/b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public E0(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/n;->n:Ljava/lang/String;

    return-void
.end method

.method public F()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/n;->s:Z

    return p0
.end method

.method public F0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/n;->r:Z

    return-void
.end method

.method public G()Lh/h;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    return-object p0
.end method

.method public G0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/k;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/k;-><init>(Lcom/airbnb/lottie/n;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    int-to-float p1, p1

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p1, v0

    invoke-virtual {p0, p1}, Lt/e;->A(F)V

    return-void
.end method

.method public H0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/b;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/b;-><init>(Lcom/airbnb/lottie/n;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lh/h;->l(Ljava/lang/String;)Lm/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, v0, Lm/h;->b:F

    iget v0, v0, Lm/h;->c:F

    add-float/2addr p1, v0

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/n;->G0(I)V

    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public I0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/f;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/f;-><init>(Lcom/airbnb/lottie/n;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {v0}, Lh/h;->p()F

    move-result v0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    invoke-virtual {p0}, Lh/h;->f()F

    move-result p0

    invoke-static {v0, p0, p1}, Lt/g;->i(FFF)F

    move-result p0

    invoke-virtual {v1, p0}, Lt/e;->A(F)V

    return-void
.end method

.method public J()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {p0}, Lt/e;->k()F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public J0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/l;

    invoke-direct {v1, p0, p1, p2}, Lcom/airbnb/lottie/l;-><init>(Lcom/airbnb/lottie/n;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    int-to-float p1, p1

    int-to-float p2, p2

    const v0, 0x3f7d70a4    # 0.99f

    add-float/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lt/e;->B(FF)V

    return-void
.end method

.method public K0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/c;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/c;-><init>(Lcom/airbnb/lottie/n;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lh/h;->l(Ljava/lang/String;)Lm/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, v0, Lm/h;->b:F

    float-to-int p1, p1

    .line 5
    iget v0, v0, Lm/h;->c:F

    float-to-int v0, v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p1, v0}, Lcom/airbnb/lottie/n;->J0(II)V

    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public L()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->n:Ljava/lang/String;

    return-object p0
.end method

.method public L0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/i;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/i;-><init>(Lcom/airbnb/lottie/n;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {p0, p1}, Lt/e;->C(I)V

    return-void
.end method

.method public M(Ljava/lang/String;)Lh/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lh/h;->j()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh/q;

    return-object p0
.end method

.method public M0(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/m;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/m;-><init>(Lcom/airbnb/lottie/n;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lh/h;->l(Ljava/lang/String;)Lm/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget p1, v0, Lm/h;->b:F

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/n;->L0(I)V

    return-void

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot find marker with name "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public N()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/n;->r:Z

    return p0
.end method

.method public N0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/g;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/g;-><init>(Lcom/airbnb/lottie/n;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Lh/h;->p()F

    move-result v0

    iget-object v1, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    invoke-virtual {v1}, Lh/h;->f()F

    move-result v1

    invoke-static {v0, v1, p1}, Lt/g;->i(FFF)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/n;->L0(I)V

    return-void
.end method

.method public O()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {p0}, Lt/e;->m()F

    move-result p0

    return p0
.end method

.method public O0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/n;->w:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/n;->w:Z

    .line 3
    iget-object p0, p0, Lcom/airbnb/lottie/n;->t:Lp/c;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lp/c;->J(Z)V

    :cond_1
    return-void
.end method

.method public P()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {p0}, Lt/e;->n()F

    move-result p0

    return p0
.end method

.method public P0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/airbnb/lottie/n;->v:Z

    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lh/h;->v(Z)V

    :cond_0
    return-void
.end method

.method public Q()Lh/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lh/h;->n()Lh/x;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public Q0(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/h;

    invoke-direct {v1, p0, p1}, Lcom/airbnb/lottie/h;-><init>(Lcom/airbnb/lottie/n;F)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string v0, "Drawable#setProgress"

    .line 3
    invoke-static {v0}, Lh/c;->a(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    iget-object p0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    invoke-virtual {p0, p1}, Lh/h;->h(F)F

    move-result p0

    invoke-virtual {v1, p0}, Lt/e;->z(F)V

    .line 5
    invoke-static {v0}, Lh/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method public R()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {p0}, Lt/e;->j()F

    move-result p0

    return p0
.end method

.method public R0(Lh/a0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/n;->y:Lh/a0;

    .line 2
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->v()V

    return-void
.end method

.method public S()Lh/a0;
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/n;->z:Z

    if-eqz p0, :cond_0

    sget-object p0, Lh/a0;->c:Lh/a0;

    goto :goto_0

    :cond_0
    sget-object p0, Lh/a0;->b:Lh/a0;

    :goto_0
    return-object p0
.end method

.method public S0(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    return-void
.end method

.method public T()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatCount()I

    move-result p0

    return p0
.end method

.method public T0(I)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {p0, p1}, Lt/e;->setRepeatMode(I)V

    return-void
.end method

.method public U()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getRepeatMode()I

    move-result p0

    return p0
.end method

.method public U0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/n;->f:Z

    return-void
.end method

.method public V()F
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {p0}, Lt/e;->p()F

    move-result p0

    return p0
.end method

.method public V0(F)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {p0, p1}, Lt/e;->D(F)V

    return-void
.end method

.method public W()Lh/c0;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public W0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/airbnb/lottie/n;->c:Z

    return-void
.end method

.method public X(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->I()Ll/a;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Ll/a;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public X0(Lh/c0;)V
    .locals 0

    return-void
.end method

.method public Y0()Z
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    invoke-virtual {p0}, Lh/h;->c()Landroidx/collection/SparseArrayCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/collection/SparseArrayCompat;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Z()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lt/e;->isRunning()Z

    move-result p0

    return p0
.end method

.method a0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {p0}, Lt/e;->isRunning()Z

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/n;->g:Lcom/airbnb/lottie/n$c;

    sget-object v0, Lcom/airbnb/lottie/n$c;->b:Lcom/airbnb/lottie/n$c;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/airbnb/lottie/n$c;->c:Lcom/airbnb/lottie/n$c;

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public b0()Z
    .locals 0

    iget-boolean p0, p0, Lcom/airbnb/lottie/n;->x:Z

    return p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "Drawable#draw"

    .line 1
    invoke-static {v0}, Lh/c;->a(Ljava/lang/String;)V

    .line 2
    iget-boolean v1, p0, Lcom/airbnb/lottie/n;->f:Z

    if-eqz v1, :cond_1

    .line 3
    :try_start_0
    iget-boolean v1, p0, Lcom/airbnb/lottie/n;->z:Z

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/airbnb/lottie/n;->t:Lp/c;

    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/n;->t0(Landroid/graphics/Canvas;Lp/c;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/n;->y(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v1, "Lottie crashed in draw!"

    .line 6
    invoke-static {v1, p1}, Lt/d;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v1, p0, Lcom/airbnb/lottie/n;->z:Z

    if-eqz v1, :cond_2

    .line 8
    iget-object v1, p0, Lcom/airbnb/lottie/n;->t:Lp/c;

    invoke-direct {p0, p1, v1}, Lcom/airbnb/lottie/n;->t0(Landroid/graphics/Canvas;Lp/c;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/n;->y(Landroid/graphics/Canvas;)V

    :goto_0
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/airbnb/lottie/n;->M:Z

    .line 11
    invoke-static {v0}, Lh/c;->b(Ljava/lang/String;)F

    return-void
.end method

.method public getAlpha()I
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/n;->u:I

    return p0
.end method

.method public getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lh/h;->b()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lh/h;->b()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/n;->M:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/n;->M:Z

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public isRunning()Z
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->Z()Z

    move-result p0

    return p0
.end method

.method public p(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {p0, p1}, Lt/a;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public p0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {v0}, Lt/e;->r()V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/airbnb/lottie/n$c;->a:Lcom/airbnb/lottie/n$c;

    iput-object v0, p0, Lcom/airbnb/lottie/n;->g:Lcom/airbnb/lottie/n$c;

    :cond_0
    return-void
.end method

.method public q(Lm/e;Ljava/lang/Object;Lu/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lm/e;",
            "TT;",
            "Lu/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->t:Lp/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/d;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/airbnb/lottie/d;-><init>(Lcom/airbnb/lottie/n;Lm/e;Ljava/lang/Object;Lu/c;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    sget-object v1, Lm/e;->c:Lm/e;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 4
    invoke-virtual {v0, p2, p3}, Lp/c;->d(Ljava/lang/Object;Lu/c;)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p1}, Lm/e;->d()Lm/f;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lm/e;->d()Lm/f;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lm/f;->d(Ljava/lang/Object;Lu/c;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/n;->u0(Lm/e;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/e;

    invoke-virtual {v1}, Lm/e;->d()Lm/f;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lm/f;->d(Ljava/lang/Object;Lu/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr v2, p1

    :goto_1
    if-eqz v2, :cond_4

    .line 11
    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->invalidateSelf()V

    .line 12
    sget-object p1, Lh/u;->E:Ljava/lang/Float;

    if-ne p2, p1, :cond_4

    .line 13
    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->R()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/airbnb/lottie/n;->Q0(F)V

    :cond_4
    return-void
.end method

.method public q0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->t:Lp/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/e;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/e;-><init>(Lcom/airbnb/lottie/n;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->v()V

    .line 4
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->r()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->T()I

    move-result v0

    if-nez v0, :cond_3

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {v0}, Lt/e;->s()V

    .line 7
    sget-object v0, Lcom/airbnb/lottie/n$c;->a:Lcom/airbnb/lottie/n$c;

    iput-object v0, p0, Lcom/airbnb/lottie/n;->g:Lcom/airbnb/lottie/n$c;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/n$c;->b:Lcom/airbnb/lottie/n$c;

    iput-object v0, p0, Lcom/airbnb/lottie/n;->g:Lcom/airbnb/lottie/n$c;

    .line 9
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->r()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->V()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->P()F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->O()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/n;->B0(I)V

    .line 11
    iget-object v0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {v0}, Lt/e;->i()V

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    sget-object v0, Lcom/airbnb/lottie/n$c;->a:Lcom/airbnb/lottie/n$c;

    iput-object v0, p0, Lcom/airbnb/lottie/n;->g:Lcom/airbnb/lottie/n$c;

    :cond_5
    return-void
.end method

.method public r0()V
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {p0}, Lt/a;->removeAllListeners()V

    return-void
.end method

.method public s0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {v0}, Lt/a;->removeAllUpdateListeners()V

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    iget-object p0, p0, Lcom/airbnb/lottie/n;->l:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Lt/a;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/airbnb/lottie/n;->u:I

    .line 2
    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p0, "Use addColorFilter instead."

    invoke-static {p0}, Lt/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 2
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p2

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/airbnb/lottie/n;->g:Lcom/airbnb/lottie/n$c;

    sget-object v0, Lcom/airbnb/lottie/n$c;->b:Lcom/airbnb/lottie/n$c;

    if-ne p1, v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->q0()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/airbnb/lottie/n$c;->c:Lcom/airbnb/lottie/n$c;

    if-ne p1, v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->v0()V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {p1}, Lt/e;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->p0()V

    .line 9
    sget-object p1, Lcom/airbnb/lottie/n$c;->c:Lcom/airbnb/lottie/n$c;

    iput-object p1, p0, Lcom/airbnb/lottie/n;->g:Lcom/airbnb/lottie/n$c;

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 10
    sget-object p1, Lcom/airbnb/lottie/n$c;->a:Lcom/airbnb/lottie/n$c;

    iput-object p1, p0, Lcom/airbnb/lottie/n;->g:Lcom/airbnb/lottie/n$c;

    :cond_3
    :goto_0
    return p2
.end method

.method public start()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->q0()V

    return-void
.end method

.method public stop()V
    .locals 0

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->B()V

    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {v0}, Lt/e;->cancel()V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/airbnb/lottie/n$c;->a:Lcom/airbnb/lottie/n$c;

    iput-object v0, p0, Lcom/airbnb/lottie/n;->g:Lcom/airbnb/lottie/n$c;

    :cond_0
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {v0}, Lt/e;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {v0}, Lt/e;->cancel()V

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/airbnb/lottie/n$c;->a:Lcom/airbnb/lottie/n$c;

    iput-object v0, p0, Lcom/airbnb/lottie/n;->g:Lcom/airbnb/lottie/n$c;

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    .line 6
    iput-object v0, p0, Lcom/airbnb/lottie/n;->t:Lp/c;

    .line 7
    iput-object v0, p0, Lcom/airbnb/lottie/n;->m:Ll/b;

    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {v0}, Lt/e;->h()V

    .line 9
    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->invalidateSelf()V

    return-void
.end method

.method public u0(Lm/e;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm/e;",
            ")",
            "Ljava/util/List<",
            "Lm/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->t:Lp/c;

    if-nez v0, :cond_0

    const-string p0, "Cannot resolve KeyPath. Composition is not set yet."

    .line 2
    invoke-static {p0}, Lt/d;->c(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object p0, p0, Lcom/airbnb/lottie/n;->t:Lp/c;

    new-instance v1, Lm/e;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v1, v3}, Lm/e;-><init>([Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v0, v1}, Lp/b;->g(Lm/e;ILjava/util/List;Lm/e;)V

    return-object v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    return-void
.end method

.method public v0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->t:Lp/c;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    new-instance v1, Lcom/airbnb/lottie/a;

    invoke-direct {v1, p0}, Lcom/airbnb/lottie/a;-><init>(Lcom/airbnb/lottie/n;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->v()V

    .line 4
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->r()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->T()I

    move-result v0

    if-nez v0, :cond_3

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {v0}, Lt/e;->w()V

    .line 7
    sget-object v0, Lcom/airbnb/lottie/n$c;->a:Lcom/airbnb/lottie/n$c;

    iput-object v0, p0, Lcom/airbnb/lottie/n;->g:Lcom/airbnb/lottie/n$c;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lcom/airbnb/lottie/n$c;->c:Lcom/airbnb/lottie/n$c;

    iput-object v0, p0, Lcom/airbnb/lottie/n;->g:Lcom/airbnb/lottie/n$c;

    .line 9
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->r()Z

    move-result v0

    if-nez v0, :cond_5

    .line 10
    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->V()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->P()F

    move-result v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->O()F

    move-result v0

    :goto_1
    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/n;->B0(I)V

    .line 11
    iget-object v0, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {v0}, Lt/e;->i()V

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_5

    .line 13
    sget-object v0, Lcom/airbnb/lottie/n$c;->a:Lcom/airbnb/lottie/n$c;

    iput-object v0, p0, Lcom/airbnb/lottie/n;->g:Lcom/airbnb/lottie/n$c;

    :cond_5
    return-void
.end method

.method public x0(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/airbnb/lottie/n;->x:Z

    return-void
.end method

.method public y0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/n;->s:Z

    if-eq p1, v0, :cond_1

    .line 2
    iput-boolean p1, p0, Lcom/airbnb/lottie/n;->s:Z

    .line 3
    iget-object v0, p0, Lcom/airbnb/lottie/n;->t:Lp/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lp/c;->O(Z)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public z(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/airbnb/lottie/n;->q:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Lcom/airbnb/lottie/n;->q:Z

    .line 3
    iget-object p1, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-eqz p1, :cond_1

    .line 4
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->s()V

    :cond_1
    return-void
.end method

.method public z0(Lh/h;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/airbnb/lottie/n;->M:Z

    .line 3
    invoke-virtual {p0}, Lcom/airbnb/lottie/n;->u()V

    .line 4
    iput-object p1, p0, Lcom/airbnb/lottie/n;->a:Lh/h;

    .line 5
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->s()V

    .line 6
    iget-object v1, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {v1, p1}, Lt/e;->y(Lh/h;)V

    .line 7
    iget-object v1, p0, Lcom/airbnb/lottie/n;->b:Lt/e;

    invoke-virtual {v1}, Lt/e;->getAnimatedFraction()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/airbnb/lottie/n;->Q0(F)V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 9
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/n$b;

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {v2, p1}, Lcom/airbnb/lottie/n$b;->a(Lh/h;)V

    .line 12
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 13
    :cond_2
    iget-object v1, p0, Lcom/airbnb/lottie/n;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 14
    iget-boolean v1, p0, Lcom/airbnb/lottie/n;->v:Z

    invoke-virtual {p1, v1}, Lh/h;->v(Z)V

    .line 15
    invoke-direct {p0}, Lcom/airbnb/lottie/n;->v()V

    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    .line 17
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 18
    check-cast p1, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 19
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return v0
.end method
