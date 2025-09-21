.class public final synthetic Lcom/sec/android/app/camera/engine/o8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/Message;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/o8;->a:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/o8;->a:Landroid/os/Message;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/SingleTakeManager;->o(Landroid/os/Message;)V

    return-void
.end method
