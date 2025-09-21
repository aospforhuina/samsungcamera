.class public interface abstract Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingContract$View;
.super Ljava/lang/Object;
.source "QuickSettingContract.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/BaseContract$View;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/android/app/camera/interfaces/BaseContract$View<",
        "Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract announceForAccessibility(Ljava/lang/CharSequence;)V
.end method

.method public abstract hideSubQuickSetting()V
.end method

.method public abstract refreshItem(Ln5/q;)V
.end method

.method public abstract refreshItemList(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln5/q;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setButtonClickListener(Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingContract$ButtonClickListener;)V
.end method

.method public abstract setResizableMode(Z)V
.end method

.method public abstract showSubQuickSetting(Ljava/util/List;Ln5/q;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ln5/q;",
            ">;",
            "Ln5/q;",
            ")V"
        }
    .end annotation
.end method

.method public abstract startAttentionAnimation(Ln5/q;)V
.end method

.method public abstract stopAttentionAnimation(Ln5/q;)V
.end method

.method public abstract updateBackground(Z)V
.end method
