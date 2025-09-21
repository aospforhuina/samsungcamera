.class public final synthetic Lcom/sec/android/app/camera/engine/a5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/FunManagerImpl;

.field public final synthetic b:Landroid/widget/RelativeLayout$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/FunManagerImpl;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/a5;->a:Lcom/sec/android/app/camera/engine/FunManagerImpl;

    iput-object p2, p0, Lcom/sec/android/app/camera/engine/a5;->b:Landroid/widget/RelativeLayout$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/a5;->a:Lcom/sec/android/app/camera/engine/FunManagerImpl;

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/a5;->b:Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/engine/FunManagerImpl;->a(Lcom/sec/android/app/camera/engine/FunManagerImpl;Landroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method
