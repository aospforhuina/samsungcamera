.class public final synthetic Lcom/samsung/android/camera/core2/processor/postSaving/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/postSaving/h;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/postSaving/h;->a:Ljava/lang/String;

    check-cast p1, Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;

    invoke-static {p0, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/PostSavingStateManagerGroup;->b(Ljava/lang/String;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)Z

    move-result p0

    return p0
.end method
