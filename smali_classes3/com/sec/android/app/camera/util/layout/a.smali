.class public final synthetic Lcom/sec/android/app/camera/util/layout/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/util/layout/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/util/layout/a;->a:Landroid/content/Context;

    check-cast p1, Landroidx/constraintlayout/widget/Guideline;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/layout/LayoutUtil;->a(Landroid/content/Context;Landroidx/constraintlayout/widget/Guideline;)V

    return-void
.end method
