.class public final synthetic Lcom/sec/android/app/camera/engine/o4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/engine/CommonEngine;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/engine/CommonEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/o4;->a:Lcom/sec/android/app/camera/engine/CommonEngine;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/o4;->a:Lcom/sec/android/app/camera/engine/CommonEngine;

    invoke-static {p0}, Lcom/sec/android/app/camera/engine/CommonEngine;->e(Lcom/sec/android/app/camera/engine/CommonEngine;)V

    return-void
.end method
