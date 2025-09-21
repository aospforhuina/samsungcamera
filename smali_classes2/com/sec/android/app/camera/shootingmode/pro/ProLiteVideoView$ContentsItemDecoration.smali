.class Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ProLiteVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentsItemDecoration"
.end annotation


# instance fields
.field private final BOTTOM_MARGIN:I

.field private final ITEM_SIZE:I

.field private final SIDE_PADDING:I

.field private final VERTICAL_MARGIN:I

.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;->ITEM_SIZE:I

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;->SIDE_PADDING:I

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;->VERTICAL_MARGIN:I

    .line 5
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0704ec

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;->BOTTOM_MARGIN:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;Lcom/sec/android/app/camera/shootingmode/pro/y;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;-><init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 1
    iget-object p4, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;

    invoke-static {p4}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;->o(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;)Ljava/util/ArrayList;

    move-result-object p4

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p4

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;->this$0:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;->SIDE_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;->ITEM_SIZE:I

    mul-int/2addr v1, p4

    sub-int/2addr v0, v1

    add-int/lit8 p4, p4, -0x1

    div-int/2addr v0, p4

    .line 3
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    if-ne p2, p4, :cond_1

    move v0, p3

    .line 4
    :cond_1
    iget p2, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;->VERTICAL_MARGIN:I

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoView$ContentsItemDecoration;->BOTTOM_MARGIN:I

    invoke-virtual {p1, p3, p2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
