.class Lcom/vuforia/DataSetList$ListIterator;
.super Ljava/lang/Object;
.source "DataSetList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vuforia/DataSetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/vuforia/DataSet;",
        ">;"
    }
.end annotation


# instance fields
.field private cur:I

.field private end:I

.field final synthetic this$0:Lcom/vuforia/DataSetList;


# direct methods
.method constructor <init>(Lcom/vuforia/DataSetList;)V
    .locals 1

    iput-object p1, p0, Lcom/vuforia/DataSetList$ListIterator;->this$0:Lcom/vuforia/DataSetList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/vuforia/DataSetList$ListIterator;->cur:I

    iput v0, p0, Lcom/vuforia/DataSetList$ListIterator;->end:I

    invoke-virtual {p1}, Lcom/vuforia/DataSetList;->size()I

    move-result p1

    iput p1, p0, Lcom/vuforia/DataSetList$ListIterator;->end:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget v0, p0, Lcom/vuforia/DataSetList$ListIterator;->cur:I

    iget v1, p0, Lcom/vuforia/DataSetList$ListIterator;->end:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/vuforia/DataSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    iget v0, p0, Lcom/vuforia/DataSetList$ListIterator;->cur:I

    iget v1, p0, Lcom/vuforia/DataSetList$ListIterator;->end:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/vuforia/DataSetList$ListIterator;->cur:I

    iget v1, p0, Lcom/vuforia/DataSetList$ListIterator;->cur:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vuforia/DataSetList$ListIterator;->cur:I

    iget-object v1, p0, Lcom/vuforia/DataSetList$ListIterator;->this$0:Lcom/vuforia/DataSetList;

    invoke-virtual {v1, v0}, Lcom/vuforia/DataSetList;->at(I)Lcom/vuforia/DataSet;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/vuforia/DataSetList$ListIterator;->next()Lcom/vuforia/DataSet;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
