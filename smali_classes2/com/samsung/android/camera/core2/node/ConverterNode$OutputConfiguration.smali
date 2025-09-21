.class Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;
.super Ljava/lang/Object;
.source "ConverterNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/node/ConverterNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutputConfiguration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/node/Node$PortType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/camera/core2/node/Node$PortType<",
            "TT;>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/samsung/android/camera/core2/node/Node$PortType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/camera/core2/node/Node$PortType<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;->a:Lcom/samsung/android/camera/core2/node/Node$PortType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/camera/core2/node/Node$PortType;Lcom/samsung/android/camera/core2/node/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;-><init>(Lcom/samsung/android/camera/core2/node/Node$PortType;)V

    return-void
.end method

.method static bridge synthetic a(Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;->b:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;)Lcom/samsung/android/camera/core2/node/Node$PortType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;->a:Lcom/samsung/android/camera/core2/node/Node$PortType;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;->d(Ljava/lang/Object;)V

    return-void
.end method

.method private d(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/ConverterNode$OutputConfiguration;->b:Ljava/lang/Object;

    return-void
.end method
