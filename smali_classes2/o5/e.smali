.class public abstract Lo5/e;
.super Landroidx/databinding/ViewDataBinding;
.source "AttachBinding.java"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

.field public final c:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

.field public final d:Landroid/widget/ImageView;

.field public final f:Landroid/widget/ImageView;

.field protected g:Lcom/sec/android/app/camera/attach/AttachViewModel;
    .annotation runtime Landroidx/databinding/Bindable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/view/View;Lcom/google/android/material/bottomnavigation/BottomNavigationView;Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    iput-object p4, p0, Lo5/e;->a:Landroid/view/View;

    .line 3
    iput-object p5, p0, Lo5/e;->b:Lcom/google/android/material/bottomnavigation/BottomNavigationView;

    .line 4
    iput-object p6, p0, Lo5/e;->c:Lcom/sec/android/app/camera/widget/RotatableConstraintLayout;

    .line 5
    iput-object p7, p0, Lo5/e;->d:Landroid/widget/ImageView;

    .line 6
    iput-object p8, p0, Lo5/e;->f:Landroid/widget/ImageView;

    return-void
.end method

.method public static d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lo5/e;
    .locals 1

    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lo5/e;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/e;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lo5/e;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v0, 0x7f0d000e

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lo5/e;

    return-object p0
.end method


# virtual methods
.method public abstract f(Lcom/sec/android/app/camera/attach/AttachViewModel;)V
.end method
