.class public final synthetic Lcom/sec/android/app/camera/setting/s0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/setting/CameraPreferenceFragment;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/setting/CameraPreferenceFragment;Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/s0;->a:Lcom/sec/android/app/camera/setting/CameraPreferenceFragment;

    iput-object p2, p0, Lcom/sec/android/app/camera/setting/s0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iput p3, p0, Lcom/sec/android/app/camera/setting/s0;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/s0;->a:Lcom/sec/android/app/camera/setting/CameraPreferenceFragment;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/s0;->b:Landroidx/recyclerview/widget/RecyclerView;

    iget p0, p0, Lcom/sec/android/app/camera/setting/s0;->c:I

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/camera/setting/CameraPreferenceFragment;->k(Lcom/sec/android/app/camera/setting/CameraPreferenceFragment;Landroidx/recyclerview/widget/RecyclerView;I)V

    return-void
.end method
