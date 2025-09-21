.class public Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$InvisibleViewHolder;
.super Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$ViewHolder;
.source "FilterListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InvisibleViewHolder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;Lo5/k;II)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$InvisibleViewHolder;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter$ViewHolder;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;Lo5/k;)V

    .line 3
    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;->access$000(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07015d

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    int-to-float p3, p3

    .line 4
    invoke-static {p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;->access$100(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterListAdapter;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070166

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    sub-float/2addr p3, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p3, p1

    float-to-int p1, p3

    mul-int/lit8 p2, p2, 0x3

    sub-int/2addr p1, p2

    sub-int/2addr p1, p4

    .line 5
    sget-object p2, Lu3/b;->b:Lu3/b;

    invoke-static {p2}, Lu3/d;->e(Lu3/b;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter$ViewHolder;->mViewBinding:Lo5/k;

    iget-object p2, p2, Lo5/k;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter$ViewHolder;->mViewBinding:Lo5/k;

    iget-object p2, p2, Lo5/k;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p1, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/effects/abstraction/AbstractFilterListAdapter$ViewHolder;->mViewBinding:Lo5/k;

    iget-object p0, p0, Lo5/k;->c:Landroid/widget/FrameLayout;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
