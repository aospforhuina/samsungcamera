.class public final synthetic Lcom/sec/android/app/camera/shootingmode/more/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/more/MoreView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/more/MoreView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/j;->a:Lcom/sec/android/app/camera/shootingmode/more/MoreView;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/j;->a:Lcom/sec/android/app/camera/shootingmode/more/MoreView;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/more/MoreView;->q(Lcom/sec/android/app/camera/shootingmode/more/MoreView;Landroid/view/View;Z)V

    return-void
.end method
