.class public abstract Lo5/q2;
.super Landroidx/databinding/ViewDataBinding;
.source "MenuManualColorTuneMenuBinding.java"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/Guideline;

.field public final b:Landroidx/recyclerview/widget/RecyclerView;

.field public final c:Lcom/sec/android/app/camera/widget/ExpandableSlider;

.field public final d:Lcom/sec/android/app/camera/widget/ExpandableSlider;

.field public final f:Lcom/sec/android/app/camera/widget/ExpandableSlider;

.field public final g:Lcom/sec/android/app/camera/widget/ExpandableSlider;

.field public final k:Lcom/sec/android/app/camera/widget/ExpandableSlider;

.field public final l:Lcom/sec/android/app/camera/widget/ExpandableSlider;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Guideline;Landroidx/recyclerview/widget/RecyclerView;Lcom/sec/android/app/camera/widget/ExpandableSlider;Lcom/sec/android/app/camera/widget/ExpandableSlider;Lcom/sec/android/app/camera/widget/ExpandableSlider;Lcom/sec/android/app/camera/widget/ExpandableSlider;Lcom/sec/android/app/camera/widget/ExpandableSlider;Lcom/sec/android/app/camera/widget/ExpandableSlider;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/q2;->a:Landroidx/constraintlayout/widget/Guideline;

    .line 3
    iput-object p5, p0, Lo5/q2;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    iput-object p6, p0, Lo5/q2;->c:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    .line 5
    iput-object p7, p0, Lo5/q2;->d:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    .line 6
    iput-object p8, p0, Lo5/q2;->f:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    .line 7
    iput-object p9, p0, Lo5/q2;->g:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    .line 8
    iput-object p10, p0, Lo5/q2;->k:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    .line 9
    iput-object p11, p0, Lo5/q2;->l:Lcom/sec/android/app/camera/widget/ExpandableSlider;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/q2;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/q2;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/q2;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/q2;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d0066

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/q2;

    return-object p0
.end method
