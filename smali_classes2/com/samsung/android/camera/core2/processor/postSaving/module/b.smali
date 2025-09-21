.class public final synthetic Lcom/samsung/android/camera/core2/processor/postSaving/module/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/b;->b:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/b;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/b;->b:Landroid/content/ContentValues;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleRecovery;->a(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;)V

    return-void
.end method
