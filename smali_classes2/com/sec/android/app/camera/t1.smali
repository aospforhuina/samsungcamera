.class public final synthetic Lcom/sec/android/app/camera/t1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/CoverManager$EventHandler;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/CoverManager$1;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/CoverManager$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/t1;->a:Lcom/sec/android/app/camera/CoverManager$1;

    return-void
.end method


# virtual methods
.method public final handle()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/t1;->a:Lcom/sec/android/app/camera/CoverManager$1;

    invoke-static {p0}, Lcom/sec/android/app/camera/CoverManager$1;->b(Lcom/sec/android/app/camera/CoverManager$1;)V

    return-void
.end method
