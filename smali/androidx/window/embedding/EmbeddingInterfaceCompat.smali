.class public interface abstract Landroidx/window/embedding/EmbeddingInterfaceCompat;
.super Ljava/lang/Object;
.source "EmbeddingInterfaceCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;
    }
.end annotation


# virtual methods
.method public abstract isActivityEmbedded(Landroid/app/Activity;)Z
.end method

.method public abstract setEmbeddingCallback(Landroidx/window/embedding/EmbeddingInterfaceCompat$EmbeddingCallbackInterface;)V
.end method

.method public abstract setSplitRules(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+",
            "Landroidx/window/embedding/EmbeddingRule;",
            ">;)V"
        }
    .end annotation
.end method
