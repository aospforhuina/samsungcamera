.class public final synthetic Lcom/sec/android/app/camera/shootingmode/fun/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/fun/FunView;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/fun/FunView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/fun/o;->a:Lcom/sec/android/app/camera/shootingmode/fun/FunView;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/fun/o;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/fun/o;->a:Lcom/sec/android/app/camera/shootingmode/fun/FunView;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/fun/o;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/shootingmode/fun/FunView;->m(Lcom/sec/android/app/camera/shootingmode/fun/FunView;Ljava/lang/String;)V

    return-void
.end method
