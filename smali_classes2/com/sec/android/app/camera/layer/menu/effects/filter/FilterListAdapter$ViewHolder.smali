.class public Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$ViewHolder;
.super Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter$ViewHolder;
.source "FilterListAdapter.java"

# interfaces
.implements Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterThumbnailController$FilterLiveThumbnailObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;Lo5/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter$ViewHolder;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter;Lo5/k;)V

    return-void
.end method

.method static bridge synthetic c(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$ViewHolder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$ViewHolder;->onOrientationChanged(I)V

    return-void
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$ViewHolder;->onViewAttachedToWindow()V

    return-void
.end method

.method private onOrientationChanged(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter$ViewHolder;->mViewBinding:Lo5/k;

    iget-object v0, v0, Lo5/k;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter$ViewHolder;->mViewBinding:Lo5/k;

    iget-object p0, p0, Lo5/k;->f:Landroid/widget/FrameLayout;

    int-to-float p1, p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/AnimationUtil;->rotationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter$ViewHolder;->mViewBinding:Lo5/k;

    iget-object p0, p0, Lo5/k;->f:Landroid/widget/FrameLayout;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setRotation(F)V

    :goto_0
    return-void
.end method

.method private onViewAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter$ViewHolder;->mViewBinding:Lo5/k;

    iget-object v0, v0, Lo5/k;->f:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;

    invoke-static {p0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;->access$500(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setRotation(F)V

    return-void
.end method


# virtual methods
.method public onLiveThumbnailAvailable(Ljava/util/HashMap;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;->access$200(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;->access$300(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/l;

    invoke-virtual {v0}, Ln5/l;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$ViewHolder;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;

    invoke-static {v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;->access$400(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln5/l;

    invoke-virtual {v0}, Ln5/l;->l()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter$ViewHolder;->setBitmap(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter$ViewHolder;->setBitmap(Landroid/graphics/Rect;Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    return-void
.end method
