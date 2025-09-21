.class public final synthetic Lcom/samsung/android/camera/core2/processor/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/c;->b:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/c;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/c;->b:Landroid/content/ContentValues;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/processor/PostProcessDBHelper;->a(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method
