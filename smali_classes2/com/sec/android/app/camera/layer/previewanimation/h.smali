.class public final synthetic Lcom/sec/android/app/camera/layer/previewanimation/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;

.field public final synthetic b:F

.field public final synthetic c:Z

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:I

.field public final synthetic i:I

.field public final synthetic j:I

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:I

.field public final synthetic n:Z

.field public final synthetic o:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;FZIIFFIIIIIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/previewanimation/h;->a:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;

    iput p2, p0, Lcom/sec/android/app/camera/layer/previewanimation/h;->b:F

    iput-boolean p3, p0, Lcom/sec/android/app/camera/layer/previewanimation/h;->c:Z

    iput p4, p0, Lcom/sec/android/app/camera/layer/previewanimation/h;->d:I

    iput p5, p0, Lcom/sec/android/app/camera/layer/previewanimation/h;->e:I

    iput p6, p0, Lcom/sec/android/app/camera/layer/previewanimation/h;->f:F

    iput p7, p0, Lcom/sec/android/app/camera/layer/previewanimation/h;->g:F

    iput p8, p0, Lcom/sec/android/app/camera/layer/previewanimation/h;->h:I

    iput p9, p0, Lcom/sec/android/app/camera/layer/previewanimation/h;->i:I

    iput p10, p0, Lcom/sec/android/app/camera/layer/previewanimation/h;->j:I

    iput p11, p0, Lcom/sec/android/app/camera/layer/previewanimation/h;->k:I

    iput p12, p0, Lcom/sec/android/app/camera/layer/previewanimation/h;->l:I

    iput p13, p0, Lcom/sec/android/app/camera/layer/previewanimation/h;->m:I

    iput-boolean p14, p0, Lcom/sec/android/app/camera/layer/previewanimation/h;->n:Z

    iput-boolean p15, p0, Lcom/sec/android/app/camera/layer/previewanimation/h;->o:Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/camera/layer/previewanimation/h;->a:Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;

    iget v2, v0, Lcom/sec/android/app/camera/layer/previewanimation/h;->b:F

    iget-boolean v3, v0, Lcom/sec/android/app/camera/layer/previewanimation/h;->c:Z

    iget v4, v0, Lcom/sec/android/app/camera/layer/previewanimation/h;->d:I

    iget v5, v0, Lcom/sec/android/app/camera/layer/previewanimation/h;->e:I

    iget v6, v0, Lcom/sec/android/app/camera/layer/previewanimation/h;->f:F

    iget v7, v0, Lcom/sec/android/app/camera/layer/previewanimation/h;->g:F

    iget v8, v0, Lcom/sec/android/app/camera/layer/previewanimation/h;->h:I

    iget v9, v0, Lcom/sec/android/app/camera/layer/previewanimation/h;->i:I

    iget v10, v0, Lcom/sec/android/app/camera/layer/previewanimation/h;->j:I

    iget v11, v0, Lcom/sec/android/app/camera/layer/previewanimation/h;->k:I

    iget v12, v0, Lcom/sec/android/app/camera/layer/previewanimation/h;->l:I

    iget v13, v0, Lcom/sec/android/app/camera/layer/previewanimation/h;->m:I

    iget-boolean v14, v0, Lcom/sec/android/app/camera/layer/previewanimation/h;->n:Z

    iget-boolean v15, v0, Lcom/sec/android/app/camera/layer/previewanimation/h;->o:Z

    move-object v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    move v14, v15

    move-object/from16 v15, p1

    invoke-static/range {v0 .. v15}, Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;->i(Lcom/sec/android/app/camera/layer/previewanimation/PreviewAnimationLayerView;FZIIFFIIIIIIZZLandroid/animation/ValueAnimator;)V

    return-void
.end method
