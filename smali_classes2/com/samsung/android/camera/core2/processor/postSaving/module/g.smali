.class public final synthetic Lcom/samsung/android/camera/core2/processor/postSaving/module/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/g;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/g;->b:Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/g;->a:Ljava/util/List;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/processor/postSaving/module/g;->b:Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;

    check-cast p1, Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/processor/postSaving/module/PostSavingModuleSefInsert;->c(Ljava/util/List;Lcom/samsung/android/camera/core2/processor/postSaving/SavingInfoContainer;Lcom/samsung/android/camera/core2/util/SEFInterface$SefParam;)V

    return-void
.end method
