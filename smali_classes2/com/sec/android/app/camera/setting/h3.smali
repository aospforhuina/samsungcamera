.class public final synthetic Lcom/sec/android/app/camera/setting/h3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;

.field public final synthetic b:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/h3;->a:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/camera/setting/h3;->b:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;

    iput p3, p0, Lcom/sec/android/app/camera/setting/h3;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/h3;->a:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/h3;->b:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;

    iget p0, p0, Lcom/sec/android/app/camera/setting/h3;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->a(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter$ItemViewHolder;ILandroid/view/View;)V

    return-void
.end method
