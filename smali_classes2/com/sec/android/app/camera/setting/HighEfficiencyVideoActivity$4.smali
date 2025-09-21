.class Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity$4;
.super Ljava/lang/Object;
.source "HighEfficiencyVideoActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity;->initScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity$4;->this$0:Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity$4;->this$0:Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity;->p(Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity$4;->this$0:Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity;

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity;->n(Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity;)Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity$ListAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/setting/HighEfficiencyVideoActivity$ListAdapter;->updateItemEnabled()V

    return-void
.end method
