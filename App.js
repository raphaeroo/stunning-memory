import React from 'react';
import {View, Text, NativeModules, TouchableOpacity} from 'react-native';

const HelloWorld = NativeModules.HelloWorld;

export default function App() {
  return (
    <View style={{flex: 1, alignItems: 'center', justifyContent: 'center', backgroundColor: 'white'}}>
      <TouchableOpacity
        onPress={() => {
          HelloWorld.ShowMessage('Hello World!', 2);
        }}>
        <Text>Click me!</Text>
      </TouchableOpacity>
    </View>
  );
}
