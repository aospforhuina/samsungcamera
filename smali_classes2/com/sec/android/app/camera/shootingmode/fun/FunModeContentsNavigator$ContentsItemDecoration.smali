.class Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$ContentsItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "FunModeContentsNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContentsItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$ContentsItemDecoration;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;Lcom/sec/android/app/camera/shootingmode/fun/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$ContentsItemDecoration;-><init>(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator$ContentsItemDecoration;->this$0:Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;->d(Lcom/sec/android/app/camera/shootingmode/fun/FunModeContentsNavigator;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p0

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_0

    .line 2
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    return-void
.end method
