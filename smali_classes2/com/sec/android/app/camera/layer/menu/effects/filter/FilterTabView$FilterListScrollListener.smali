.class Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$FilterListScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "FilterTabView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilterListScrollListener"
.end annotation


# instance fields
.field private mState:I

.field final synthetic this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$FilterListScrollListener;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$FilterListScrollListener;->mState:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Lcom/sec/android/app/camera/layer/menu/effects/filter/o;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$FilterListScrollListener;-><init>(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;)V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iget p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$FilterListScrollListener;->mState:I

    const/4 v0, 0x1

    if-eq p1, p2, :cond_0

    if-nez p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$FilterListScrollListener;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->z(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Z)V

    goto :goto_0

    :cond_0
    if-eq p1, p2, :cond_2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$FilterListScrollListener;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->z(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Z)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$FilterListScrollListener;->this$0:Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;->x(Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView;Z)V

    .line 6
    :cond_2
    :goto_0
    iput p2, p0, Lcom/sec/android/app/camera/layer/menu/effects/filter/FilterTabView$FilterListScrollListener;->mState:I

    return-void
.end method
