// Approximate JavaScript reconstructed from SpiderMonkey v22 bytecode.
// This is not the original source text; unresolved regions carry TODO_BYTECODE markers.
// Embedded source: /Users/zhanglinsen/workspace/bianfeng/sgscq1-china-client/projects/sgscq/Resources/src_jsc/Utils/buckets.js:1
// source line 11, bytecode pc 0
var buckets;
// source line 11, bytecode pc 21
(buckets = {});
// source line 12, bytecode pc 32
(function() {
    // source line 20, bytecode pc 15
    (buckets.defaultCompare = function(a, b) {
    if ((a < b)) {
        // source line 22, bytecode pc 14
        return -1;
    }
    if ((a === b)) {
        // source line 25, bytecode pc 28
        return 0;
    }
    // source line 27, bytecode pc 30
    return 1;
});
    // source line 34, bytecode pc 31
    (buckets.defaultEquals = function(a, b) {
    // source line 35, bytecode pc 7
    return (a === b);
});
    // source line 43, bytecode pc 47
    (buckets.defaultToString = function(item) {
    if ((item === null)) {
        // source line 45, bytecode pc 15
        return "BUCKETS_NULL";
    }
    if (buckets.isUndefined(item)) {
        // source line 48, bytecode pc 46
        return "BUCKETS_UNDEFINED";
    }
    if (buckets.isString(item)) {
        // source line 51, bytecode pc 75
        return item;
    }
    // source line 53, bytecode pc 90
    return item.toString();
});
    // source line 61, bytecode pc 63
    (buckets.isFunction = function(func) {
    // source line 62, bytecode pc 10
    return (typeof(func) === "function");
});
    // source line 70, bytecode pc 79
    (buckets.isUndefined = function(obj) {
    // source line 71, bytecode pc 10
    return (typeof(obj) === "undefined");
});
    // source line 79, bytecode pc 95
    (buckets.isString = function(obj) {
    // source line 80, bytecode pc 36
    return (Object.prototype.toString.call(obj) === "[object String]");
});
    // source line 88, bytecode pc 111
    (buckets.reverseCompareFunction = function(compareFunction) {
    if (!buckets.isFunction(compareFunction)) {
        // source line 90, bytecode pc 37
        return function(a, b) {
    if ((a < b)) {
        // source line 92, bytecode pc 13
        return 1;
    }
    if ((a === b)) {
        // source line 95, bytecode pc 27
        return 0;
    }
    // source line 97, bytecode pc 30
    return -1;
}
    }
    // source line 100, bytecode pc 43
    return function(d, v) {
    // source line 101, bytecode pc 25
    return (compareFunction(d, v) * -1);
}
});
    // source line 111, bytecode pc 127
    (buckets.compareToEquals = function(compareFunction) {
    // source line 112, bytecode pc 5
    return function(a, b) {
    // source line 113, bytecode pc 24
    return (compareFunction(a, b) === 0);
}
});
    // source line 120, bytecode pc 144
    (buckets.arrays = {});
    // source line 132, bytecode pc 165
    (buckets.arrays.indexOf = function(array, item, equalsFunction) {
    var equals, length, i;
    // source line 133, bytecode pc 22
    (equals = (equalsFunction || buckets.defaultEquals));
    // source line 134, bytecode pc 34
    (length = array.length);
    // source line 135, bytecode pc 39
    (i = 0);
    while ((i < length)) {
        if (equals(array[i], item)) {
            // source line 137, bytecode pc 74
            return i;
        }
        // source line 135, bytecode pc 89
        i++;
    }
    // source line 140, bytecode pc 105
    return -1;
});
    // source line 153, bytecode pc 186
    (buckets.arrays.lastIndexOf = function(array, item, equalsFunction) {
    var equals, length, i;
    // source line 154, bytecode pc 22
    (equals = (equalsFunction || buckets.defaultEquals));
    // source line 155, bytecode pc 34
    (length = array.length);
    // source line 156, bytecode pc 43
    (i = (length - 1));
    while ((i >= 0)) {
        if (equals(array[i], item)) {
            // source line 158, bytecode pc 78
            return i;
        }
        // source line 156, bytecode pc 93
        i--;
    }
    // source line 161, bytecode pc 107
    return -1;
});
    // source line 172, bytecode pc 207
    (buckets.arrays.contains = function(array, item, equalsFunction) {
    // source line 173, bytecode pc 35
    return (buckets.arrays.indexOf(array, item, equalsFunction) >= 0);
});
    // source line 185, bytecode pc 228
    (buckets.arrays.remove = function(array, item, equalsFunction) {
    var index;
    // source line 186, bytecode pc 36
    (index = buckets.arrays.indexOf(array, item, equalsFunction));
    if ((index < 0)) {
        // source line 188, bytecode pc 48
        return false;
    }
    // source line 190, bytecode pc 69
    array.splice(index, 1);
    // source line 191, bytecode pc 71
    return true;
});
    // source line 204, bytecode pc 249
    (buckets.arrays.frequency = function(array, item, equalsFunction) {
    var equals, length, freq, i;
    // source line 205, bytecode pc 22
    (equals = (equalsFunction || buckets.defaultEquals));
    // source line 206, bytecode pc 34
    (length = array.length);
    // source line 207, bytecode pc 39
    (freq = 0);
    // source line 208, bytecode pc 44
    (i = 0);
    while ((i < length)) {
        if (equals(array[i], item)) {
            // source line 210, bytecode pc 90
            freq++;
        }
        // source line 208, bytecode pc 105
        i++;
    }
    // source line 213, bytecode pc 122
    return freq;
});
    // source line 227, bytecode pc 270
    (buckets.arrays.equals = function(array1, array2, equalsFunction) {
    var equals, length, i;
    // source line 228, bytecode pc 22
    (equals = (equalsFunction || buckets.defaultEquals));
    if ((array1.length !== array2.length)) {
        // source line 231, bytecode pc 46
        return false;
    }
    // source line 233, bytecode pc 58
    (length = array1.length);
    // source line 234, bytecode pc 63
    (i = 0);
    while ((i < length)) {
        if (!equals(array1[i], array2[i])) {
            // source line 236, bytecode pc 101
            return false;
        }
        // source line 234, bytecode pc 116
        i++;
    }
    // source line 239, bytecode pc 131
    return true;
});
    // source line 247, bytecode pc 291
    (buckets.arrays.copy = function(array) {
    // source line 248, bytecode pc 14
    return array.concat();
});
    // source line 258, bytecode pc 312
    (buckets.arrays.swap = function(array, i, j) {
    var temp;
    if (((i < 0) || ((i >= array.length) || ((j < 0) || (j >= array.length))))) {
        // source line 260, bytecode pc 58
        return false;
    }
    // source line 262, bytecode pc 69
    (temp = array[i]);
    // source line 263, bytecode pc 84
    (array[i] = array[j]);
    // source line 264, bytecode pc 95
    (array[j] = temp);
    // source line 265, bytecode pc 97
    return true;
});
    // source line 275, bytecode pc 333
    (buckets.arrays.forEach = function(array, callback) {
    var lenght, i;
    // source line 276, bytecode pc 11
    (lenght = array.length);
    // source line 277, bytecode pc 16
    (i = 0);
    while ((i < lenght)) {
        if ((callback(array[i]) === false)) {
            // source line 279, bytecode pc 47
            return void 0;
        }
        // source line 277, bytecode pc 62
        i++;
    }
});
    // source line 290, bytecode pc 349
    (buckets.LinkedList = function() {
    // source line 297, bytecode pc 7
    (this.firstNode = null);
    // source line 304, bytecode pc 15
    (this.lastNode = null);
    // source line 311, bytecode pc 23
    (this.nElements = 0);
});
    // source line 323, bytecode pc 375
    (buckets.LinkedList.prototype.add = function(item, index) {
    var newNode, prev;
    if (buckets.isUndefined(index)) {
        // source line 325, bytecode pc 34
        (index = this.nElements);
    }
    if (((index < 0) || ((index > this.nElements) || buckets.isUndefined(item)))) {
        // source line 328, bytecode pc 88
        return false;
    }
    // source line 330, bytecode pc 108
    (newNode = this.createNode(item));
    if ((this.nElements === 0)) {
        // source line 333, bytecode pc 131
        (this.firstNode = newNode);
        // source line 334, bytecode pc 141
        (this.lastNode = newNode);
    } else {
        if ((index === this.nElements)) {
            // source line 337, bytecode pc 176
            (this.lastNode.next = newNode);
            // source line 338, bytecode pc 186
            (this.lastNode = newNode);
        } else {
            if ((index === 0)) {
                // source line 341, bytecode pc 216
                (newNode.next = this.firstNode);
                // source line 342, bytecode pc 226
                (this.firstNode = newNode);
            } else {
                // source line 344, bytecode pc 253
                (prev = this.nodeAtIndex((index - 1)));
                // source line 345, bytecode pc 270
                (newNode.next = prev.next);
                // source line 346, bytecode pc 282
                (prev.next = newNode);
            }
        }
    }
    // source line 348, bytecode pc 309
    this.nElements++;
    // source line 349, bytecode pc 311
    return true;
});
    // source line 357, bytecode pc 401
    (buckets.LinkedList.prototype.first = function() {
    if ((this.firstNode !== null)) {
        // source line 359, bytecode pc 24
        return this.firstNode.element;
    }
    // source line 361, bytecode pc 30
    return undefined;
});
    // source line 369, bytecode pc 427
    (buckets.LinkedList.prototype.last = function() {
    if ((this.lastNode !== null)) {
        // source line 371, bytecode pc 24
        return this.lastNode.element;
    }
    // source line 373, bytecode pc 30
    return undefined;
});
    // source line 383, bytecode pc 453
    (buckets.LinkedList.prototype.elementAtIndex = function(index) {
    var node;
    // source line 385, bytecode pc 19
    (node = this.nodeAtIndex(index));
    if ((node === null)) {
        // source line 387, bytecode pc 35
        return undefined;
    }
    // source line 389, bytecode pc 44
    return node.element;
});
    // source line 412, bytecode pc 479
    (buckets.LinkedList.prototype.indexOf = function(item, equalsFunction) {
    var equalsF, currentNode, index;
    // source line 414, bytecode pc 22
    (equalsF = (equalsFunction || buckets.defaultEquals));
    if (buckets.isUndefined(item)) {
        // source line 416, bytecode pc 50
        return -1;
    }
    // source line 418, bytecode pc 60
    (currentNode = this.firstNode);
    // source line 419, bytecode pc 65
    (index = 0);
    while ((currentNode !== null)) {
        if (equalsF(currentNode.element, item)) {
            // source line 422, bytecode pc 101
            return index;
        }
        // source line 424, bytecode pc 116
        index++;
        // source line 425, bytecode pc 128
        (currentNode = currentNode.next);
    }
    // source line 427, bytecode pc 142
    return -1;
});
    // source line 448, bytecode pc 505
    (buckets.LinkedList.prototype.contains = function(item, equalsFunction) {
    // source line 449, bytecode pc 22
    return (this.indexOf(item, equalsFunction) >= 0);
});
    // source line 467, bytecode pc 531
    (buckets.LinkedList.prototype.remove = function(item, equalsFunction) {
    var equalsF, previous, currentNode;
    // source line 468, bytecode pc 22
    (equalsF = (equalsFunction || buckets.defaultEquals));
    if (((this.nElements < 1) || buckets.isUndefined(item))) {
        // source line 470, bytecode pc 63
        return false;
    }
    // source line 472, bytecode pc 68
    (previous = null);
    // source line 473, bytecode pc 78
    (currentNode = this.firstNode);
    while ((currentNode !== null)) {
        if (equalsF(currentNode.element, item)) {
            if ((currentNode === this.firstNode)) {
                // source line 479, bytecode pc 143
                (this.firstNode = this.firstNode.next);
                if ((currentNode === this.lastNode)) {
                    // source line 481, bytecode pc 166
                    (this.lastNode = null);
                }
            } else {
                if ((currentNode === this.lastNode)) {
                    // source line 484, bytecode pc 196
                    (this.lastNode = previous);
                    // source line 485, bytecode pc 213
                    (previous.next = currentNode.next);
                    // source line 486, bytecode pc 223
                    (currentNode.next = null);
                } else {
                    // source line 488, bytecode pc 245
                    (previous.next = currentNode.next);
                    // source line 489, bytecode pc 255
                    (currentNode.next = null);
                }
            }
            // source line 491, bytecode pc 282
            this.nElements--;
            // source line 492, bytecode pc 284
            return true;
        }
        // source line 494, bytecode pc 291
        (previous = currentNode);
        // source line 495, bytecode pc 303
        (currentNode = currentNode.next);
    }
    // source line 497, bytecode pc 316
    return false;
});
    // source line 503, bytecode pc 557
    (buckets.LinkedList.prototype.clear = function() {
    // source line 504, bytecode pc 7
    (this.firstNode = null);
    // source line 505, bytecode pc 15
    (this.lastNode = null);
    // source line 506, bytecode pc 23
    (this.nElements = 0);
});
    // source line 519, bytecode pc 583
    (buckets.LinkedList.prototype.equals = function(other, equalsFunction) {
    var eqF;
    // source line 520, bytecode pc 22
    (eqF = (equalsFunction || buckets.defaultEquals));
    if (!(other instanceof buckets.LinkedList)) {
        // source line 522, bytecode pc 44
        return false;
    }
    if ((this.size() !== other.size())) {
        // source line 525, bytecode pc 78
        return false;
    }
    // source line 527, bytecode pc 111
    return this.equalsAux(this.firstNode, other.firstNode, eqF);
});
    // source line 533, bytecode pc 609
    (buckets.LinkedList.prototype.equalsAux = function(n1, n2, eqF) {
    while ((n1 !== null)) {
        if (!eqF(n1.element, n2.element)) {
            // source line 536, bytecode pc 39
            return false;
        }
        // source line 538, bytecode pc 51
        (n1 = n1.next);
        // source line 539, bytecode pc 63
        (n2 = n2.next);
    }
    // source line 541, bytecode pc 76
    return true;
});
    // source line 549, bytecode pc 635
    (buckets.LinkedList.prototype.removeElementAtIndex = function(index) {
    var element, previous;
    if (((index < 0) || (index >= this.nElements))) {
        // source line 552, bytecode pc 31
        return undefined;
    }
    if ((this.nElements === 1)) {
        // source line 557, bytecode pc 63
        (element = this.firstNode.element);
        // source line 558, bytecode pc 71
        (this.firstNode = null);
        // source line 559, bytecode pc 79
        (this.lastNode = null);
    } else {
        // source line 561, bytecode pc 106
        (previous = this.nodeAtIndex((index - 1)));
        if ((previous === null)) {
            // source line 563, bytecode pc 131
            (element = this.firstNode.element);
            // source line 564, bytecode pc 149
            (this.firstNode = this.firstNode.next);
        } else {
            if ((previous.next === this.lastNode)) {
                // source line 566, bytecode pc 189
                (element = this.lastNode.element);
                // source line 567, bytecode pc 199
                (this.lastNode = previous);
            }
        }
        if ((previous !== null)) {
            // source line 570, bytecode pc 226
            (element = previous.next.element);
            // source line 571, bytecode pc 248
            (previous.next = previous.next.next);
        }
    }
    // source line 574, bytecode pc 275
    this.nElements--;
    // source line 575, bytecode pc 279
    return element;
});
    // source line 584, bytecode pc 661
    (buckets.LinkedList.prototype.forEach = function(callback) {
    var currentNode;
    // source line 585, bytecode pc 9
    (currentNode = this.firstNode);
    while ((currentNode !== null)) {
        if ((callback(currentNode.element) === false)) {
            break;
        }
        // source line 590, bytecode pc 56
        (currentNode = currentNode.next);
    }
});
    // source line 598, bytecode pc 687
    (buckets.LinkedList.prototype.reverse = function() {
    var previous, current, temp;
    // source line 599, bytecode pc 4
    (previous = null);
    // source line 600, bytecode pc 14
    (current = this.firstNode);
    // source line 601, bytecode pc 19
    (temp = null);
    while ((current !== null)) {
        // source line 603, bytecode pc 37
        (temp = current.next);
        // source line 604, bytecode pc 49
        (current.next = previous);
        // source line 605, bytecode pc 56
        (previous = current);
        // source line 606, bytecode pc 63
        (current = temp);
    }
    // source line 608, bytecode pc 84
    (temp = this.firstNode);
    // source line 609, bytecode pc 97
    (this.firstNode = this.lastNode);
    // source line 610, bytecode pc 107
    (this.lastNode = temp);
});
    // source line 620, bytecode pc 713
    (buckets.LinkedList.prototype.toArray = function() {
    var array, currentNode;
    // source line 621, bytecode pc 8
    (array = []);
    // source line 622, bytecode pc 18
    (currentNode = this.firstNode);
    while ((currentNode !== null)) {
        // source line 624, bytecode pc 48
        array.push(currentNode.element);
        // source line 625, bytecode pc 60
        (currentNode = currentNode.next);
    }
    // source line 627, bytecode pc 75
    return array;
});
    // source line 633, bytecode pc 739
    (buckets.LinkedList.prototype.size = function() {
    // source line 634, bytecode pc 6
    return this.nElements;
});
    // source line 641, bytecode pc 765
    (buckets.LinkedList.prototype.isEmpty = function() {
    // source line 642, bytecode pc 8
    return (this.nElements <= 0);
});
    // source line 648, bytecode pc 791
    (buckets.LinkedList.prototype.nodeAtIndex = function(index) {
    var node, i;
    if (((index < 0) || (index >= this.nElements))) {
        // source line 651, bytecode pc 27
        return null;
    }
    if ((index === (this.nElements - 1))) {
        // source line 654, bytecode pc 51
        return this.lastNode;
    }
    // source line 656, bytecode pc 61
    (node = this.firstNode);
    // source line 657, bytecode pc 66
    (i = 0);
    while ((i < index)) {
        // source line 658, bytecode pc 84
        (node = node.next);
        // source line 657, bytecode pc 99
        i++;
    }
    // source line 660, bytecode pc 116
    return node;
});
    // source line 665, bytecode pc 817
    (buckets.LinkedList.prototype.createNode = function(item) {
    // source line 668, bytecode pc 20
    return { element: item, next: null }
});
    // source line 691, bytecode pc 833
    (buckets.Dictionary = function(toStrFunction) {
    // source line 698, bytecode pc 12
    (this.table = {});
    // source line 705, bytecode pc 20
    (this.nElements = 0);
    // source line 712, bytecode pc 46
    (this.toStr = (toStrFunction || buckets.defaultToString));
});
    // source line 722, bytecode pc 859
    (buckets.Dictionary.prototype.get = function(key) {
    var pair;
    // source line 724, bytecode pc 26
    (pair = this.table[this.toStr(key)]);
    if (buckets.isUndefined(pair)) {
        // source line 726, bytecode pc 57
        return undefined;
    }
    // source line 728, bytecode pc 66
    return pair.value;
});
    // source line 740, bytecode pc 885
    (buckets.Dictionary.prototype.set = function(key, value) {
    var ret, k, previousElement;
    if ((buckets.isUndefined(key) || buckets.isUndefined(value))) {
        // source line 743, bytecode pc 56
        return undefined;
    }
    // source line 747, bytecode pc 80
    (k = this.toStr(key));
    // source line 748, bytecode pc 94
    (previousElement = this.table[k]);
    if (buckets.isUndefined(previousElement)) {
        // source line 750, bytecode pc 146
        this.nElements++;
        // source line 751, bytecode pc 155
        (ret = undefined);
    } else {
        // source line 753, bytecode pc 172
        (ret = previousElement.value);
    }
    // source line 757, bytecode pc 205
    (this.table[k] = { key: key, value: value });
    // source line 759, bytecode pc 209
    return ret;
});
    // source line 768, bytecode pc 911
    (buckets.Dictionary.prototype.remove = function(key) {
    var k, previousElement;
    // source line 769, bytecode pc 19
    (k = this.toStr(key));
    // source line 770, bytecode pc 33
    (previousElement = this.table[k]);
    if (!buckets.isUndefined(previousElement)) {
        // source line 772, bytecode pc 70
        delete this.table[k];
        // source line 773, bytecode pc 97
        this.nElements--;
        // source line 774, bytecode pc 106
        return previousElement.value;
    }
    // source line 776, bytecode pc 112
    return undefined;
});
    // source line 782, bytecode pc 937
    (buckets.Dictionary.prototype.keys = function() {
    var array, name;
    // source line 783, bytecode pc 8
    (array = []);
    for (var name in this.table) {
        if (!(this.table.hasOwnProperty(name))) continue;
        // source line 786, bytecode pc 84
        array.push(this.table[name].key);
    }
    // source line 789, bytecode pc 96
    return array;
});
    // source line 795, bytecode pc 963
    (buckets.Dictionary.prototype.values = function() {
    var array, name;
    // source line 796, bytecode pc 8
    (array = []);
    for (var name in this.table) {
        if (!(this.table.hasOwnProperty(name))) continue;
        // source line 799, bytecode pc 84
        array.push(this.table[name].value);
    }
    // source line 802, bytecode pc 96
    return array;
});
    // source line 812, bytecode pc 989
    (buckets.Dictionary.prototype.forEach = function(callback) {
    var name, pair, ret;
    for (var name in this.table) {
        if (!(this.table.hasOwnProperty(name))) continue;
        // source line 815, bytecode pc 58
        (pair = this.table[name]);
        // source line 816, bytecode pc 88
        (ret = callback(pair.key, pair.value));
        if (!((ret === false))) continue;
        // source line 818, bytecode pc 100
        return void 0;
    }
});
    // source line 831, bytecode pc 1015
    (buckets.Dictionary.prototype.containsKey = function(key) {
    // source line 832, bytecode pc 34
    return !buckets.isUndefined(this.get(key));
});
    // source line 838, bytecode pc 1041
    (buckets.Dictionary.prototype.clear = function() {
    // source line 840, bytecode pc 12
    (this.table = {});
    // source line 841, bytecode pc 20
    (this.nElements = 0);
});
    // source line 847, bytecode pc 1067
    (buckets.Dictionary.prototype.size = function() {
    // source line 848, bytecode pc 6
    return this.nElements;
});
    // source line 855, bytecode pc 1093
    (buckets.Dictionary.prototype.isEmpty = function() {
    // source line 856, bytecode pc 8
    return (this.nElements <= 0);
});
    // source line 892, bytecode pc 1109
    (buckets.MultiDictionary = function(toStrFunction, valuesEqualsFunction) {
    // source line 894, bytecode pc 25
    (this.parent = new buckets.Dictionary(toStrFunction));
    // source line 895, bytecode pc 51
    (this.equalsF = (valuesEqualsFunction || buckets.defaultEquals));
});
    // source line 906, bytecode pc 1135
    (buckets.MultiDictionary.prototype.get = function(key) {
    var values;
    // source line 907, bytecode pc 24
    (values = this.parent.get(key));
    if (buckets.isUndefined(values)) {
        // source line 909, bytecode pc 55
        return [];
    }
    // source line 911, bytecode pc 81
    return buckets.arrays.copy(values);
});
    // source line 922, bytecode pc 1161
    (buckets.MultiDictionary.prototype.set = function(key, value) {
    var array;
    if ((buckets.isUndefined(key) || buckets.isUndefined(value))) {
        // source line 925, bytecode pc 52
        return false;
    }
    if (!this.containsKey(key)) {
        // source line 928, bytecode pc 109
        this.parent.set(key, [ value ]);
        // source line 929, bytecode pc 111
        return true;
    }
    // source line 931, bytecode pc 136
    (array = this.parent.get(key));
    if (buckets.arrays.contains(array, value, this.equalsF)) {
        // source line 933, bytecode pc 179
        return false;
    }
    // source line 935, bytecode pc 198
    array.push(value);
    // source line 936, bytecode pc 200
    return true;
});
    // source line 950, bytecode pc 1187
    (buckets.MultiDictionary.prototype.remove = function(key, value) {
    var v, array;
    if (buckets.isUndefined(value)) {
        // source line 952, bytecode pc 49
        (v = this.parent.remove(key));
        if (buckets.isUndefined(v)) {
            // source line 954, bytecode pc 76
            return false;
        }
        // source line 956, bytecode pc 78
        return true;
    }
    // source line 958, bytecode pc 103
    (array = this.parent.get(key));
    if (buckets.arrays.remove(array, value, this.equalsF)) {
        if ((array.length === 0)) {
            // source line 961, bytecode pc 181
            this.parent.remove(key);
        }
        // source line 963, bytecode pc 183
        return true;
    }
    // source line 965, bytecode pc 185
    return false;
});
    // source line 972, bytecode pc 1213
    (buckets.MultiDictionary.prototype.keys = function() {
    // source line 973, bytecode pc 17
    return this.parent.keys();
});
    // source line 980, bytecode pc 1239
    (buckets.MultiDictionary.prototype.values = function() {
    var values, array, i, v, j;
    // source line 981, bytecode pc 20
    (values = this.parent.values());
    // source line 982, bytecode pc 29
    (array = []);
    // source line 983, bytecode pc 34
    (i = 0);
    while ((i < values.length)) {
        // source line 984, bytecode pc 51
        (v = values[i]);
        // source line 985, bytecode pc 56
        (j = 0);
        while ((j < v.length)) {
            // source line 986, bytecode pc 85
            array.push(v[j]);
            // source line 985, bytecode pc 100
            j++;
        }
        // source line 983, bytecode pc 133
        i++;
    }
    // source line 989, bytecode pc 155
    return array;
});
    // source line 999, bytecode pc 1265
    (buckets.MultiDictionary.prototype.containsKey = function(key) {
    // source line 1000, bytecode pc 21
    return this.parent.containsKey(key);
});
    // source line 1006, bytecode pc 1291
    (buckets.MultiDictionary.prototype.clear = function() {
    // source line 1007, bytecode pc 17
    return this.parent.clear();
});
    // source line 1014, bytecode pc 1317
    (buckets.MultiDictionary.prototype.size = function() {
    // source line 1015, bytecode pc 17
    return this.parent.size();
});
    // source line 1022, bytecode pc 1343
    (buckets.MultiDictionary.prototype.isEmpty = function() {
    // source line 1023, bytecode pc 17
    return this.parent.isEmpty();
});
    // source line 1069, bytecode pc 1359
    (buckets.Heap = function(compareFunction) {
    // source line 1076, bytecode pc 11
    (this.data = []);
    // source line 1083, bytecode pc 37
    (this.compare = (compareFunction || buckets.defaultCompare));
});
    // source line 1092, bytecode pc 1385
    (buckets.Heap.prototype.leftChildIndex = function(nodeIndex) {
    // source line 1093, bytecode pc 8
    return ((2 * nodeIndex) + 1);
});
    // source line 1102, bytecode pc 1411
    (buckets.Heap.prototype.rightChildIndex = function(nodeIndex) {
    // source line 1103, bytecode pc 9
    return ((2 * nodeIndex) + 2);
});
    // source line 1111, bytecode pc 1437
    (buckets.Heap.prototype.parentIndex = function(nodeIndex) {
    // source line 1112, bytecode pc 25
    return Math.floor(((nodeIndex - 1) / 2));
});
    // source line 1122, bytecode pc 1463
    (buckets.Heap.prototype.minIndex = function(leftChild, rightChild) {
    if ((rightChild >= this.data.length)) {
        if ((leftChild >= this.data.length)) {
            // source line 1126, bytecode pc 42
            return -1;
        } else {
            // source line 1128, bytecode pc 51
            return leftChild;
        }
    } else {
        if ((this.compare(this.data[leftChild], this.data[rightChild]) <= 0)) {
            // source line 1132, bytecode pc 101
            return leftChild;
        } else {
            // source line 1134, bytecode pc 110
            return rightChild;
        }
    }
});
    // source line 1143, bytecode pc 1489
    (buckets.Heap.prototype.siftUp = function(index) {
    var parent;
    // source line 1145, bytecode pc 19
    (parent = this.parentIndex(index));
    while (((index > 0) && (this.compare(this.data[parent], this.data[index]) > 0))) {
        // source line 1147, bytecode pc 62
        buckets.arrays.swap(this.data, parent, index);
        // source line 1148, bytecode pc 69
        (index = parent);
        // source line 1149, bytecode pc 89
        (parent = this.parentIndex(index));
    }
});
    // source line 1157, bytecode pc 1515
    (buckets.Heap.prototype.siftDown = function(nodeIndex) {
    var min;
    // source line 1160, bytecode pc 49
    (min = this.minIndex(this.leftChildIndex(nodeIndex), this.rightChildIndex(nodeIndex)));
    while (((min >= 0) && (this.compare(this.data[nodeIndex], this.data[min]) > 0))) {
        // source line 1163, bytecode pc 92
        buckets.arrays.swap(this.data, min, nodeIndex);
        // source line 1164, bytecode pc 99
        (nodeIndex = min);
        // source line 1165, bytecode pc 149
        (min = this.minIndex(this.leftChildIndex(nodeIndex), this.rightChildIndex(nodeIndex)));
    }
});
    // source line 1173, bytecode pc 1541
    (buckets.Heap.prototype.peek = function() {
    if ((this.data.length > 0)) {
        // source line 1176, bytecode pc 26
        return this.data[0];
    } else {
        // source line 1178, bytecode pc 37
        return undefined;
    }
});
    // source line 1186, bytecode pc 1567
    (buckets.Heap.prototype.add = function(element) {
    if (buckets.isUndefined(element)) {
        // source line 1188, bytecode pc 30
        return undefined;
    }
    // source line 1190, bytecode pc 52
    this.data.push(element);
    // source line 1191, bytecode pc 79
    this.siftUp((this.data.length - 1));
    // source line 1192, bytecode pc 81
    return true;
});
    // source line 1200, bytecode pc 1593
    (buckets.Heap.prototype.removeRoot = function() {
    var obj;
    if ((this.data.length > 0)) {
        // source line 1203, bytecode pc 29
        (obj = this.data[0]);
        // source line 1204, bytecode pc 58
        (this.data[0] = this.data[(this.data.length - 1)]);
        // source line 1205, bytecode pc 92
        this.data.splice((this.data.length - 1), 1);
        if ((this.data.length > 0)) {
            // source line 1207, bytecode pc 125
            this.siftDown(0);
        }
        // source line 1209, bytecode pc 129
        return obj;
    }
    // source line 1211, bytecode pc 135
    return undefined;
});
    // source line 1219, bytecode pc 1619
    (buckets.Heap.prototype.contains = function(element) {
    var equF;
    // source line 1220, bytecode pc 26
    (equF = buckets.compareToEquals(this.compare));
    // source line 1221, bytecode pc 63
    return buckets.arrays.contains(this.data, element, equF);
});
    // source line 1227, bytecode pc 1645
    (buckets.Heap.prototype.size = function() {
    // source line 1228, bytecode pc 11
    return this.data.length;
});
    // source line 1235, bytecode pc 1671
    (buckets.Heap.prototype.isEmpty = function() {
    // source line 1236, bytecode pc 13
    return (this.data.length <= 0);
});
    // source line 1241, bytecode pc 1697
    (buckets.Heap.prototype.clear = function() {
    // source line 1242, bytecode pc 12
    (this.data.length = 0);
});
    // source line 1252, bytecode pc 1723
    (buckets.Heap.prototype.forEach = function(callback) {
    // source line 1253, bytecode pc 32
    buckets.arrays.forEach(this.data, callback);
});
    // source line 1263, bytecode pc 1739
    (buckets.Stack = function() {
    // source line 1270, bytecode pc 21
    (this.list = new buckets.LinkedList());
});
    // source line 1277, bytecode pc 1765
    (buckets.Stack.prototype.push = function(elem) {
    // source line 1278, bytecode pc 23
    return this.list.add(elem, 0);
});
    // source line 1285, bytecode pc 1791
    (buckets.Stack.prototype.add = function(elem) {
    // source line 1286, bytecode pc 23
    return this.list.add(elem, 0);
});
    // source line 1293, bytecode pc 1817
    (buckets.Stack.prototype.pop = function() {
    // source line 1294, bytecode pc 19
    return this.list.removeElementAtIndex(0);
});
    // source line 1302, bytecode pc 1843
    (buckets.Stack.prototype.peek = function() {
    // source line 1303, bytecode pc 17
    return this.list.first();
});
    // source line 1309, bytecode pc 1869
    (buckets.Stack.prototype.size = function() {
    // source line 1310, bytecode pc 17
    return this.list.size();
});
    // source line 1331, bytecode pc 1895
    (buckets.Stack.prototype.contains = function(elem, equalsFunction) {
    // source line 1332, bytecode pc 25
    return this.list.contains(elem, equalsFunction);
});
    // source line 1339, bytecode pc 1921
    (buckets.Stack.prototype.isEmpty = function() {
    // source line 1340, bytecode pc 17
    return this.list.isEmpty();
});
    // source line 1345, bytecode pc 1947
    (buckets.Stack.prototype.clear = function() {
    // source line 1346, bytecode pc 17
    this.list.clear();
});
    // source line 1356, bytecode pc 1973
    (buckets.Stack.prototype.forEach = function(callback) {
    // source line 1357, bytecode pc 21
    this.list.forEach(callback);
});
    // source line 1367, bytecode pc 1989
    (buckets.Queue = function() {
    // source line 1374, bytecode pc 21
    (this.list = new buckets.LinkedList());
});
    // source line 1381, bytecode pc 2015
    (buckets.Queue.prototype.enqueue = function(elem) {
    // source line 1382, bytecode pc 21
    return this.list.add(elem);
});
    // source line 1389, bytecode pc 2041
    (buckets.Queue.prototype.add = function(elem) {
    // source line 1390, bytecode pc 21
    return this.list.add(elem);
});
    // source line 1396, bytecode pc 2067
    (buckets.Queue.prototype.dequeue = function() {
    var el;
    if ((this.list.size() !== 0)) {
        // source line 1398, bytecode pc 44
        (el = this.list.first());
        // source line 1399, bytecode pc 64
        this.list.removeElementAtIndex(0);
        // source line 1400, bytecode pc 68
        return el;
    }
    // source line 1402, bytecode pc 74
    return undefined;
});
    // source line 1408, bytecode pc 2093
    (buckets.Queue.prototype.peek = function() {
    if ((this.list.size() !== 0)) {
        // source line 1411, bytecode pc 41
        return this.list.first();
    }
    // source line 1413, bytecode pc 47
    return undefined;
});
    // source line 1420, bytecode pc 2119
    (buckets.Queue.prototype.size = function() {
    // source line 1421, bytecode pc 17
    return this.list.size();
});
    // source line 1442, bytecode pc 2145
    (buckets.Queue.prototype.contains = function(elem, equalsFunction) {
    // source line 1443, bytecode pc 25
    return this.list.contains(elem, equalsFunction);
});
    // source line 1451, bytecode pc 2171
    (buckets.Queue.prototype.isEmpty = function() {
    // source line 1452, bytecode pc 19
    return (this.list.size() <= 0);
});
    // source line 1458, bytecode pc 2197
    (buckets.Queue.prototype.clear = function() {
    // source line 1459, bytecode pc 17
    this.list.clear();
});
    // source line 1469, bytecode pc 2223
    (buckets.Queue.prototype.forEach = function(callback) {
    // source line 1470, bytecode pc 21
    this.list.forEach(callback);
});
    // source line 1497, bytecode pc 2239
    (buckets.PriorityQueue = function(compareFunction) {
    // source line 1498, bytecode pc 42
    (this.heap = new buckets.Heap(buckets.reverseCompareFunction(compareFunction)));
});
    // source line 1506, bytecode pc 2265
    (buckets.PriorityQueue.prototype.enqueue = function(element) {
    // source line 1507, bytecode pc 21
    return this.heap.add(element);
});
    // source line 1515, bytecode pc 2291
    (buckets.PriorityQueue.prototype.add = function(element) {
    // source line 1516, bytecode pc 21
    return this.heap.add(element);
});
    // source line 1524, bytecode pc 2317
    (buckets.PriorityQueue.prototype.dequeue = function() {
    var el;
    if ((this.heap.size() !== 0)) {
        // source line 1526, bytecode pc 44
        (el = this.heap.peek());
        // source line 1527, bytecode pc 62
        this.heap.removeRoot();
        // source line 1528, bytecode pc 66
        return el;
    }
    // source line 1530, bytecode pc 72
    return undefined;
});
    // source line 1538, bytecode pc 2343
    (buckets.PriorityQueue.prototype.peek = function() {
    // source line 1539, bytecode pc 17
    return this.heap.peek();
});
    // source line 1548, bytecode pc 2369
    (buckets.PriorityQueue.prototype.contains = function(element) {
    // source line 1549, bytecode pc 21
    return this.heap.contains(element);
});
    // source line 1557, bytecode pc 2395
    (buckets.PriorityQueue.prototype.isEmpty = function() {
    // source line 1558, bytecode pc 17
    return this.heap.isEmpty();
});
    // source line 1565, bytecode pc 2421
    (buckets.PriorityQueue.prototype.size = function() {
    // source line 1566, bytecode pc 17
    return this.heap.size();
});
    // source line 1572, bytecode pc 2447
    (buckets.PriorityQueue.prototype.clear = function() {
    // source line 1573, bytecode pc 17
    this.heap.clear();
});
    // source line 1583, bytecode pc 2473
    (buckets.PriorityQueue.prototype.forEach = function(callback) {
    // source line 1584, bytecode pc 21
    this.heap.forEach(callback);
});
    // source line 1606, bytecode pc 2489
    (buckets.Set = function(toStringFunction) {
    // source line 1607, bytecode pc 25
    (this.dictionary = new buckets.Dictionary(toStringFunction));
});
    // source line 1616, bytecode pc 2515
    (buckets.Set.prototype.contains = function(element) {
    // source line 1617, bytecode pc 21
    return this.dictionary.containsKey(element);
});
    // source line 1625, bytecode pc 2541
    (buckets.Set.prototype.add = function(element) {
    if ((this.contains(element) || buckets.isUndefined(element))) {
        // source line 1627, bytecode pc 48
        return false;
    } else {
        // source line 1629, bytecode pc 79
        this.dictionary.set(element, element);
        // source line 1630, bytecode pc 81
        return true;
    }
});
    // source line 1639, bytecode pc 2567
    (buckets.Set.prototype.intersection = function(otherSet) {
    var set;
    // source line 1640, bytecode pc 10
    (set = this);
    // source line 1641, bytecode pc 29
    this.forEach(function(element) {
    if (!otherSet.contains(element)) {
        // source line 1643, bytecode pc 54
        set.remove(element);
    }
});
});
    // source line 1653, bytecode pc 2593
    (buckets.Set.prototype.union = function(otherSet) {
    var set;
    // source line 1654, bytecode pc 10
    (set = this);
    // source line 1655, bytecode pc 31
    otherSet.forEach(function(element) {
    // source line 1656, bytecode pc 24
    set.add(element);
});
});
    // source line 1665, bytecode pc 2619
    (buckets.Set.prototype.difference = function(otherSet) {
    var set;
    // source line 1666, bytecode pc 10
    (set = this);
    // source line 1667, bytecode pc 31
    otherSet.forEach(function(element) {
    // source line 1668, bytecode pc 24
    set.remove(element);
});
});
    // source line 1677, bytecode pc 2645
    (buckets.Set.prototype.isSubsetOf = function(otherSet) {
    var isSub;
    if ((this.size() > otherSet.size())) {
        // source line 1680, bytecode pc 39
        return false;
    }
    // source line 1683, bytecode pc 50
    (isSub = true);
    // source line 1684, bytecode pc 69
    this.forEach(function(element) {
    if (!otherSet.contains(element)) {
        // source line 1686, bytecode pc 40
        (isSub = false);
        // source line 1687, bytecode pc 42
        return false;
    }
});
    // source line 1690, bytecode pc 79
    return isSub;
});
    // source line 1697, bytecode pc 2671
    (buckets.Set.prototype.remove = function(element) {
    if (!this.contains(element)) {
        // source line 1699, bytecode pc 23
        return false;
    } else {
        // source line 1701, bytecode pc 50
        this.dictionary.remove(element);
        // source line 1702, bytecode pc 52
        return true;
    }
});
    // source line 1713, bytecode pc 2697
    (buckets.Set.prototype.forEach = function(callback) {
    // source line 1714, bytecode pc 23
    this.dictionary.forEach(function(k, v) {
    // source line 1715, bytecode pc 18
    return callback(v);
});
});
    // source line 1723, bytecode pc 2723
    (buckets.Set.prototype.toArray = function() {
    // source line 1724, bytecode pc 17
    return this.dictionary.values();
});
    // source line 1731, bytecode pc 2749
    (buckets.Set.prototype.isEmpty = function() {
    // source line 1732, bytecode pc 17
    return this.dictionary.isEmpty();
});
    // source line 1739, bytecode pc 2775
    (buckets.Set.prototype.size = function() {
    // source line 1740, bytecode pc 17
    return this.dictionary.size();
});
    // source line 1746, bytecode pc 2801
    (buckets.Set.prototype.clear = function() {
    // source line 1747, bytecode pc 17
    this.dictionary.clear();
});
    // source line 1769, bytecode pc 2817
    (buckets.Bag = function(toStrFunction) {
    // source line 1770, bytecode pc 25
    (this.toStrF = (toStrFunction || buckets.defaultToString));
    // source line 1771, bytecode pc 54
    (this.dictionary = new buckets.Dictionary(this.toStrF));
    // source line 1772, bytecode pc 62
    (this.nElements = 0);
});
    // source line 1782, bytecode pc 2843
    (buckets.Bag.prototype.add = function(element, nCopies) {
    var node;
    if ((isNaN(nCopies) || buckets.isUndefined(nCopies))) {
        // source line 1785, bytecode pc 53
        (nCopies = 1);
    }
    if ((buckets.isUndefined(element) || (nCopies <= 0))) {
        // source line 1788, bytecode pc 91
        return false;
    }
    if (!this.contains(element)) {
        // source line 1794, bytecode pc 139
        (node = { value: element, copies: nCopies });
        // source line 1796, bytecode pc 165
        this.dictionary.set(element, node);
    } else {
        // source line 1798, bytecode pc 207
        (this.dictionary.get(element).copies = (this.dictionary.get(element).copies + nCopies));
    }
    // source line 1800, bytecode pc 224
    (this.nElements = (this.nElements + nCopies));
    // source line 1801, bytecode pc 226
    return true;
});
    // source line 1809, bytecode pc 2869
    (buckets.Bag.prototype.count = function(element) {
    if (!this.contains(element)) {
        // source line 1812, bytecode pc 23
        return 0;
    } else {
        // source line 1814, bytecode pc 55
        return this.dictionary.get(element).copies;
    }
});
    // source line 1824, bytecode pc 2895
    (buckets.Bag.prototype.contains = function(element) {
    // source line 1825, bytecode pc 21
    return this.dictionary.containsKey(element);
});
    // source line 1837, bytecode pc 2921
    (buckets.Bag.prototype.remove = function(element, nCopies) {
    var node;
    if ((isNaN(nCopies) || buckets.isUndefined(nCopies))) {
        // source line 1840, bytecode pc 53
        (nCopies = 1);
    }
    if ((buckets.isUndefined(element) || (nCopies <= 0))) {
        // source line 1843, bytecode pc 91
        return false;
    }
    if (!this.contains(element)) {
        // source line 1847, bytecode pc 115
        return false;
    } else {
        // source line 1849, bytecode pc 145
        (node = this.dictionary.get(element));
        if ((nCopies > node.copies)) {
            // source line 1851, bytecode pc 184
            (this.nElements = (this.nElements - node.copies));
        } else {
            // source line 1853, bytecode pc 206
            (this.nElements = (this.nElements - nCopies));
        }
        // source line 1855, bytecode pc 225
        (node.copies = (node.copies - nCopies));
        if ((node.copies <= 0)) {
            // source line 1857, bytecode pc 262
            this.dictionary.remove(element);
        }
        // source line 1859, bytecode pc 264
        return true;
    }
});
    // source line 1868, bytecode pc 2947
    (buckets.Bag.prototype.toArray = function() {
    var a, values, vl, i, node, element, copies, j;
    // source line 1869, bytecode pc 8
    (a = []);
    // source line 1870, bytecode pc 29
    (values = this.dictionary.values());
    // source line 1871, bytecode pc 41
    (vl = values.length);
    // source line 1872, bytecode pc 46
    (i = 0);
    while ((i < vl)) {
        // source line 1873, bytecode pc 63
        (node = values[i]);
        // source line 1874, bytecode pc 75
        (element = node.value);
        // source line 1875, bytecode pc 87
        (copies = node.copies);
        // source line 1876, bytecode pc 92
        (j = 0);
        while ((j < copies)) {
            // source line 1877, bytecode pc 117
            a.push(element);
            // source line 1876, bytecode pc 132
            j++;
        }
        // source line 1872, bytecode pc 160
        i++;
    }
    // source line 1880, bytecode pc 177
    return a;
});
    // source line 1887, bytecode pc 2973
    (buckets.Bag.prototype.toSet = function() {
    var set, elements, l, i, value;
    // source line 1888, bytecode pc 25
    (set = new buckets.Set(this.toStrF));
    // source line 1889, bytecode pc 46
    (elements = this.dictionary.values());
    // source line 1890, bytecode pc 58
    (l = elements.length);
    // source line 1891, bytecode pc 63
    (i = 0);
    while ((i < l)) {
        // source line 1892, bytecode pc 85
        (value = elements[i].value);
        // source line 1893, bytecode pc 104
        set.add(value);
        // source line 1891, bytecode pc 119
        i++;
    }
    // source line 1895, bytecode pc 136
    return set;
});
    // source line 1905, bytecode pc 2999
    (buckets.Bag.prototype.forEach = function(callback) {
    // source line 1906, bytecode pc 23
    this.dictionary.forEach(function(k, v) {
    var value, copies, i;
    // source line 1907, bytecode pc 11
    (value = v.value);
    // source line 1908, bytecode pc 23
    (copies = v.copies);
    // source line 1909, bytecode pc 28
    (i = 0);
    while ((i < copies)) {
        if ((callback(value) === false)) {
            // source line 1911, bytecode pc 61
            return false;
        }
        // source line 1909, bytecode pc 76
        i++;
    }
    // source line 1914, bytecode pc 91
    return true;
});
});
    // source line 1921, bytecode pc 3025
    (buckets.Bag.prototype.size = function() {
    // source line 1922, bytecode pc 6
    return this.nElements;
});
    // source line 1929, bytecode pc 3051
    (buckets.Bag.prototype.isEmpty = function() {
    // source line 1930, bytecode pc 8
    return (this.nElements === 0);
});
    // source line 1936, bytecode pc 3077
    (buckets.Bag.prototype.clear = function() {
    // source line 1937, bytecode pc 7
    (this.nElements = 0);
    // source line 1938, bytecode pc 25
    this.dictionary.clear();
});
    // source line 1972, bytecode pc 3093
    (buckets.BSTree = function(compareFunction) {
    // source line 1973, bytecode pc 7
    (this.root = null);
    // source line 1974, bytecode pc 33
    (this.compare = (compareFunction || buckets.defaultCompare));
    // source line 1975, bytecode pc 41
    (this.nElements = 0);
});
    // source line 1983, bytecode pc 3119
    (buckets.BSTree.prototype.add = function(element) {
    if (buckets.isUndefined(element)) {
        // source line 1985, bytecode pc 26
        return false;
    }
    if ((this.insertNode(this.createNode(element)) !== null)) {
        // source line 1989, bytecode pc 89
        this.nElements++;
        // source line 1990, bytecode pc 91
        return true;
    }
    // source line 1992, bytecode pc 93
    return false;
});
    // source line 1998, bytecode pc 3145
    (buckets.BSTree.prototype.clear = function() {
    // source line 1999, bytecode pc 7
    (this.root = null);
    // source line 2000, bytecode pc 15
    (this.nElements = 0);
});
    // source line 2007, bytecode pc 3171
    (buckets.BSTree.prototype.isEmpty = function() {
    // source line 2008, bytecode pc 8
    return (this.nElements === 0);
});
    // source line 2015, bytecode pc 3197
    (buckets.BSTree.prototype.size = function() {
    // source line 2016, bytecode pc 6
    return this.nElements;
});
    // source line 2025, bytecode pc 3223
    (buckets.BSTree.prototype.contains = function(element) {
    if (buckets.isUndefined(element)) {
        // source line 2027, bytecode pc 26
        return false;
    }
    // source line 2029, bytecode pc 52
    return (this.searchNode(this.root, element) !== null);
});
    // source line 2036, bytecode pc 3249
    (buckets.BSTree.prototype.remove = function(element) {
    var node;
    // source line 2037, bytecode pc 26
    (node = this.searchNode(this.root, element));
    if ((node === null)) {
        // source line 2039, bytecode pc 38
        return false;
    }
    // source line 2041, bytecode pc 55
    this.removeNode(node);
    // source line 2042, bytecode pc 82
    this.nElements--;
    // source line 2043, bytecode pc 84
    return true;
});
    // source line 2051, bytecode pc 3275
    (buckets.BSTree.prototype.inorderTraversal = function(callback) {
    // source line 2053, bytecode pc 36
    this.inorderTraversalAux(this.root, callback, { stop: false });
});
    // source line 2062, bytecode pc 3301
    (buckets.BSTree.prototype.preorderTraversal = function(callback) {
    // source line 2064, bytecode pc 36
    this.preorderTraversalAux(this.root, callback, { stop: false });
});
    // source line 2073, bytecode pc 3327
    (buckets.BSTree.prototype.postorderTraversal = function(callback) {
    // source line 2075, bytecode pc 36
    this.postorderTraversalAux(this.root, callback, { stop: false });
});
    // source line 2085, bytecode pc 3353
    (buckets.BSTree.prototype.levelTraversal = function(callback) {
    // source line 2086, bytecode pc 23
    this.levelTraversalAux(this.root, callback);
});
    // source line 2094, bytecode pc 3379
    (buckets.BSTree.prototype.minimum = function() {
    if (this.isEmpty()) {
        // source line 2096, bytecode pc 22
        return undefined;
    }
    // source line 2098, bytecode pc 47
    return this.minimumAux(this.root).element;
});
    // source line 2106, bytecode pc 3405
    (buckets.BSTree.prototype.maximum = function() {
    if (this.isEmpty()) {
        // source line 2108, bytecode pc 22
        return undefined;
    }
    // source line 2110, bytecode pc 47
    return this.maximumAux(this.root).element;
});
    // source line 2120, bytecode pc 3431
    (buckets.BSTree.prototype.forEach = function(callback) {
    // source line 2121, bytecode pc 16
    this.inorderTraversal(callback);
});
    // source line 2128, bytecode pc 3457
    (buckets.BSTree.prototype.toArray = function() {
    var array;
    // source line 2129, bytecode pc 14
    (array = []);
    // source line 2130, bytecode pc 33
    this.inorderTraversal(function(element) {
    // source line 2131, bytecode pc 24
    array.push(element);
});
    // source line 2133, bytecode pc 43
    return array;
});
    // source line 2140, bytecode pc 3483
    (buckets.BSTree.prototype.height = function() {
    // source line 2141, bytecode pc 19
    return this.heightAux(this.root);
});
    // source line 2147, bytecode pc 3509
    (buckets.BSTree.prototype.searchNode = function(node, element) {
    var cmp;
    // source line 2148, bytecode pc 4
    (cmp = null);
    while (((node !== null) && (cmp !== 0))) {
        // source line 2150, bytecode pc 39
        (cmp = this.compare(element, node.element));
        if ((cmp < 0)) {
            // source line 2152, bytecode pc 61
            (node = node.leftCh);
        } else {
            if ((cmp > 0)) {
                // source line 2154, bytecode pc 88
                (node = node.rightCh);
            }
        }
    }
    // source line 2157, bytecode pc 114
    return node;
});
    // source line 2164, bytecode pc 3535
    (buckets.BSTree.prototype.transplant = function(n1, n2) {
    if ((n1.parent === null)) {
        // source line 2166, bytecode pc 24
        (this.root = n2);
    } else {
        if ((n1 === n1.parent.leftCh)) {
            // source line 2168, bytecode pc 68
            (n1.parent.leftCh = n2);
        } else {
            // source line 2170, bytecode pc 90
            (n1.parent.rightCh = n2);
        }
    }
    if ((n2 !== null)) {
        // source line 2173, bytecode pc 117
        (n2.parent = n1.parent);
    }
});
    // source line 2181, bytecode pc 3561
    (buckets.BSTree.prototype.removeNode = function(node) {
    var y;
    if ((node.leftCh === null)) {
        // source line 2183, bytecode pc 40
        this.transplant(node, node.rightCh);
    } else {
        if ((node.rightCh === null)) {
            // source line 2185, bytecode pc 86
            this.transplant(node, node.leftCh);
        } else {
            // source line 2187, bytecode pc 116
            (y = this.minimumAux(node.rightCh));
            if ((y.parent !== node)) {
                // source line 2189, bytecode pc 159
                this.transplant(y, y.rightCh);
                // source line 2190, bytecode pc 176
                (y.rightCh = node.rightCh);
                // source line 2191, bytecode pc 193
                (y.rightCh.parent = y);
            }
            // source line 2193, bytecode pc 214
            this.transplant(node, y);
            // source line 2194, bytecode pc 231
            (y.leftCh = node.leftCh);
            // source line 2195, bytecode pc 248
            (y.leftCh.parent = y);
        }
    }
});
    // source line 2201, bytecode pc 3587
    (buckets.BSTree.prototype.inorderTraversalAux = function(node, callback, signal) {
    if (((node === null) || signal.stop)) {
        // source line 2203, bytecode pc 25
        return void 0;
    }
    // source line 2205, bytecode pc 55
    this.inorderTraversalAux(node.leftCh, callback, signal);
    if (signal.stop) {
        // source line 2207, bytecode pc 70
        return void 0;
    }
    // source line 2209, bytecode pc 98
    (signal.stop = (callback(node.element) === false));
    if (signal.stop) {
        // source line 2211, bytecode pc 113
        return void 0;
    }
    // source line 2213, bytecode pc 143
    this.inorderTraversalAux(node.rightCh, callback, signal);
});
    // source line 2219, bytecode pc 3613
    (buckets.BSTree.prototype.levelTraversalAux = function(node, callback) {
    var queue;
    // source line 2220, bytecode pc 18
    (queue = new buckets.Queue());
    if ((node !== null)) {
        // source line 2222, bytecode pc 47
        queue.enqueue(node);
    }
    while (!queue.isEmpty()) {
        // source line 2225, bytecode pc 71
        (node = queue.dequeue());
        if ((callback(node.element) === false)) {
            // source line 2227, bytecode pc 97
            return void 0;
        }
        if ((node.leftCh !== null)) {
            // source line 2230, bytecode pc 136
            queue.enqueue(node.leftCh);
        }
        if ((node.rightCh !== null)) {
            // source line 2233, bytecode pc 175
            queue.enqueue(node.rightCh);
        }
    }
});
    // source line 2241, bytecode pc 3639
    (buckets.BSTree.prototype.preorderTraversalAux = function(node, callback, signal) {
    if (((node === null) || signal.stop)) {
        // source line 2243, bytecode pc 25
        return void 0;
    }
    // source line 2245, bytecode pc 53
    (signal.stop = (callback(node.element) === false));
    if (signal.stop) {
        // source line 2247, bytecode pc 68
        return void 0;
    }
    // source line 2249, bytecode pc 98
    this.preorderTraversalAux(node.leftCh, callback, signal);
    if (signal.stop) {
        // source line 2251, bytecode pc 113
        return void 0;
    }
    // source line 2253, bytecode pc 143
    this.preorderTraversalAux(node.rightCh, callback, signal);
});
    // source line 2258, bytecode pc 3665
    (buckets.BSTree.prototype.postorderTraversalAux = function(node, callback, signal) {
    if (((node === null) || signal.stop)) {
        // source line 2260, bytecode pc 25
        return void 0;
    }
    // source line 2262, bytecode pc 55
    this.postorderTraversalAux(node.leftCh, callback, signal);
    if (signal.stop) {
        // source line 2264, bytecode pc 70
        return void 0;
    }
    // source line 2266, bytecode pc 100
    this.postorderTraversalAux(node.rightCh, callback, signal);
    if (signal.stop) {
        // source line 2268, bytecode pc 115
        return void 0;
    }
    // source line 2270, bytecode pc 143
    (signal.stop = (callback(node.element) === false));
});
    // source line 2276, bytecode pc 3691
    (buckets.BSTree.prototype.minimumAux = function(node) {
    while ((node.leftCh !== null)) {
        // source line 2278, bytecode pc 17
        (node = node.leftCh);
    }
    // source line 2280, bytecode pc 37
    return node;
});
    // source line 2286, bytecode pc 3717
    (buckets.BSTree.prototype.maximumAux = function(node) {
    while ((node.rightCh !== null)) {
        // source line 2288, bytecode pc 17
        (node = node.rightCh);
    }
    // source line 2290, bytecode pc 37
    return node;
});
    // source line 2296, bytecode pc 3743
    (buckets.BSTree.prototype.successorNode = function(node) {
    var successor;
    if ((node.rightCh !== null)) {
        // source line 2298, bytecode pc 36
        return this.minimumAux(node.rightCh);
    }
    // source line 2300, bytecode pc 48
    (successor = node.parent);
    while (((successor !== null) && (node === successor.rightCh))) {
        // source line 2302, bytecode pc 61
        (node = successor);
        // source line 2303, bytecode pc 73
        (successor = node.parent);
    }
    // source line 2305, bytecode pc 106
    return successor;
});
    // source line 2311, bytecode pc 3769
    (buckets.BSTree.prototype.heightAux = function(node) {
    if ((node === null)) {
        // source line 2313, bytecode pc 12
        return -1;
    }
    // source line 2315, bytecode pc 75
    return (Math.max(this.heightAux(node.leftCh), this.heightAux(node.rightCh)) + 1);
});
    // source line 2321, bytecode pc 3795
    (buckets.BSTree.prototype.insertNode = function(node) {
    var parent, position, cmp;
    // source line 2323, bytecode pc 4
    (parent = null);
    // source line 2324, bytecode pc 14
    (position = this.root);
    // source line 2325, bytecode pc 19
    (cmp = null);
    while ((position !== null)) {
        // source line 2327, bytecode pc 59
        (cmp = this.compare(node.element, position.element));
        if ((cmp === 0)) {
            // source line 2329, bytecode pc 71
            return null;
        } else {
            if ((cmp < 0)) {
                // source line 2331, bytecode pc 93
                (parent = position);
                // source line 2332, bytecode pc 105
                (position = position.leftCh);
            } else {
                // source line 2334, bytecode pc 117
                (parent = position);
                // source line 2335, bytecode pc 129
                (position = position.rightCh);
            }
        }
    }
    // source line 2338, bytecode pc 152
    (node.parent = parent);
    if ((parent === null)) {
        // source line 2341, bytecode pc 172
        (this.root = node);
    } else {
        if ((this.compare(node.element, parent.element) < 0)) {
            // source line 2343, bytecode pc 226
            (parent.leftCh = node);
        } else {
            // source line 2345, bytecode pc 243
            (parent.rightCh = node);
        }
    }
    // source line 2347, bytecode pc 247
    return node;
});
    // source line 2353, bytecode pc 3821
    (buckets.BSTree.prototype.createNode = function(element) {
    // source line 2358, bytecode pc 32
    return { element: element, leftCh: null, rightCh: null, parent: null }
});
    if ((typeof(module) !== "undefined")) {
        // source line 2364, bytecode pc 3854
        (module.exports = buckets);
    }
}).call(void 0);
