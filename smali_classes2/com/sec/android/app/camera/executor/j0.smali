.class public final synthetic Lcom/sec/android/app/camera/executor/j0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ln2/n;


# direct methods
.method public synthetic constructor <init>(Ln2/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/executor/j0;->a:Ln2/n;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/executor/j0;->a:Ln2/n;

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/executor/BixbyCallbackManager$1;->c(Ln2/n;Landroid/content/Context;)V

    return-void
.end method
